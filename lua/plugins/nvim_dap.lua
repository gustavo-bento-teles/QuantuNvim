return {
  {
    'mfussenegger/nvim-dap',
  },
  {
    'nvim-neotest/nvim-nio',
  },
  {
    'rcarriga/nvim-dap-ui',
    dependencies = {'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio'},
    config = function()
      require('dapui').setup()
      local dap = require('dap')
      local dapui = require('dapui')

      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end

      -- Para usar o modo de Debug
      vim.keymap.set('n', '<F5>', function() dap.continue() end, { noremap = true, silent = true, desc = "Debug Mode: Run/Continue"})
      vim.keymap.set('n', '<F4>', function() dap.step_over() end, { noremap = true, silent = true, desc = "Debug Mode: Step Over"})
      vim.keymap.set('n', '<F3>', function() dap.step_into() end, { noremap = true, silent = true, desc = "Debug Mode: Step Into"})
      vim.keymap.set('n', '<F2>', function() dap.step_out() end, { noremap = true, silent = true, desc = "Debug Mode: Step Out"})
      vim.keymap.set('n', '<Leader>dp', function() dap.toggle_breakpoint() end, {desc = "Debug Mode: Liga ou desliga um Breakpoint na linha atual"})
      vim.keymap.set('n', '<Leader>dP', function()
        dap.set_breakpoint(vim.fn.input("Condição: "))
      end, {desc = "Debug Mode: Breakpoint com condição" })
      vim.keymap.set('n', '<Leader>lp', function()
        dap.set_breakpoint(nil, nil, vim.fn.input("Log point: "))
      end, {desc = "Debug Mode: Breakpoint de log" })
      vim.keymap.set('n', '<Leader>dr', dap.repl.open, {desc = "Debug Mode: Abrir REPL" })
      vim.keymap.set('n', '<Leader>dl', dap.run_last, {desc = "Debug Mode: Rodar último debug" })
      vim.keymap.set('n', '<Leader>dui', dapui.toggle, { desc = "Debug Mode UI: Ligar/Desligar UI de Debug" })
    end
  },
  {
    'mfussenegger/nvim-dap-python',
    dependencies = {'mfussenegger/nvim-dap'},
    config = function()
      require('dap-python').setup(vim.fn.exepath('python3'))

      local dap = require('dap')
      dap.configurations.python = {
        {
          type = 'python',
          request = 'launch',
          name = "Launch file",
          program = "${file}",
          pythonPath = function()
            return vim.fn.exepath('python3')
          end,
        }
      }
    end
  }
}
