return {
    'ThePrimeagen/harpoon',
    config = function()
      -- local harpoon = require 'harpoon'
    end,
    keys = {
      {
        '<leader>h',
        function() end,
        desc = 'Harpoon',
      },
      {
        '<leader>hh',
        function()
          require('harpoon.ui').toggle_quick_menu()
        end,
        desc = 'Open harpoon ui',
      },
      {
  
        '<leader>ha',
        function()
          require('harpoon.mark').add_file()
        end,
        desc = 'Add file to harpoon',
      },
    },
  }
  