return {
    'gsuuon/model.nvim',

    -- Don't need these if lazy = false
    cmd = { 'M', 'Model', 'Mchat' },
    init = function()
        vim.filetype.add({
                extension = {
                mchat = 'mchat',
            }
        })
    end,
    ft = 'mchat',

    keys = {
        {'<C-m>d', ':Mdelete<cr>', mode = 'n'},
        {'<C-m>s', ':Mselect<cr>', mode = 'n'},
        {'<C-m><space>', ':Mchat<cr>', mode = 'n' }
    },

    -- To override defaults add a config field and call setup()

    config = function()
        local llamacpp = require("model.providers.llamacpp")

        require('model').setup({
            prompts = {
                deepseek = {
                    provider = llamacpp,
                    options = {
                        model = "deepseek-coder-6.7b-instruct.Q4_K_M.gguf",
                        args = {
                            "-c", 16000,
                            "-ngl", 33
                        }
                    },
                    builder = function(input, context)
                        local before = ""
                        local after = ""

                        for _, ln in ipairs(context.before) do
                            before = before .. ln .. "\n"
                        end

                        for _, ln in ipairs(context.after) do
                            after = after .. ln .. "\n"
                        end

                        return {
                            prompt =
                                '### System:\n'
                                .. "\nYou are an AI programming assistant, you must respond only with code, without the need for explanations. If you need to add information, use comments within the code."
                                .. '\n### Instruction:\n'
                                .. "\nbased on this code: " .. before .. input .. after
                                .. "\nmake the changes mentioned in the comments of this part: " .. input
                                .. "\nrespond only with the changed parts."
                                .. '\n### Response:',
                            stops = { '### Instruction:', "### Response:" }
                        }
                    end,
                    transform = function (res)
                        local pattern = "```%s*%w+%s*(.-)```"
                        local result = string.match(res, pattern)

                        return result
                    end
                },
                mistral = {
                    provider = llamacpp,
                    options = {
                        model = "mistral-7b-instruct-v0.2.Q4_K_M.gguf",
                        args = {
                            "-c", 8096,
                            "-ngl", 33
                        }
                    },
                    builder = function(input, context)
                        return {
                            prompt =
                                '<|system|>'
                                .. (context.args or 'You are a helpful assistant')
                                .. '\n</s>\n<|user|>\n'
                                .. input
                                .. '</s>\n<|assistant|>',
                            stops = { '</s>' }
                        }
                    end
                }

            }
        })

        require('model.providers.llamacpp').setup({
            binary = '~/Projects/koboldcpp/server',
            models = '~/Projects/koboldcpp/models'
        })
    end
}
