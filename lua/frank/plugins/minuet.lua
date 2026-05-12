return {
  "milanglacier/minuet-ai.nvim",
  event = "InsertEnter",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("minuet").setup({
      provider = "openai_compatible",
      provider_options = {
        openai_compatible = {
          model = "deepseek/deepseek-v4-flash",
          end_point = "https://openrouter.ai/api/v1/chat/completions",
          api_key = "OPENROUTER_API_KEY",
          name = "OpenRouter",
          optional = {
            max_tokens = 256,
            top_p = 0.9,
          },
        },
      },
      virtualtext = {
        auto_trigger_ft = { "*" },
        keymap = {
          accept = "<Tab>",
          accept_line = "<A-l>",
          dismiss = "<A-e>",
        },
      },
    })
  end,
}
