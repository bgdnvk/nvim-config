# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## init

if you want icons remember to install nerdfont and check reqs from lazyvim

nvim picks it up from:  
~/.config/nvim

### documentation

<https://www.youtube.com/watch?v=N93cTbtLCIM>

edgy ui docs  
<https://github.com/folke/edgy.nvim?tab=readme-ov-file#%EF%B8%8F-keymaps-for-edgebar-windows>

### ubuntu setup

just do :checkhealth until everything is green  
install build-essentials (gcc)  
i xclip  
nvn, node, ts, npm, python3, lua, luarocks  
get cargo, easier to install treesitter  
get nerdfont

## avante model

change the model in plugins/avante.lua

```lua
  opts = {
    -- add any opts here
    provider = "openai",
    openai = {
      endpoint = "https://api.openai.com/v1", -- default endpoint
      model = "gpt-4o", -- your desired model (or use gpt-4o, etc.)
      timeout = 30000, -- timeout in milliseconds
      temperature = 0, -- adjust if needed
      max_tokens = 4096,
    },
```
