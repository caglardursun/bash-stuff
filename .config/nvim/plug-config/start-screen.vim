
let g:startify_custom_header = [        
      \' _    ___                __             ___                          __         ',
      \'| |  / (_)   ______ _   / /   ____ _   /   |  ____  ____ ___________/ /_  __  __',
      \'| | / / / | / / __ `/  / /   / __ `/  / /| | / __ \/ __ `/ ___/ ___/ __ \/ / / /',
      \'| |/ / /| |/ / /_/ /  / /___/ /_/ /  / ___ |/ / / / /_/ / /  / /__/ / / / /_/ / ',
      \'|___/_/ |___/\__,_/  /_____/\__,_/  /_/  |_/_/ /_/\__,_/_/   \___/_/ /_/\__, /  ',
      \'                                                                       /____/   ',
      \]

let g:startify_session_dir = '~/.config/nvim/session'


let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']                        },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']                     },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ ]


let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

let g:webdevicons_enable_startify = 1

function! StartifyEntryFormat()
        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
    endfunction

let g:startify_bookmarks = [
            \ { 'c': '~/.config/i3/config' },
            \ { 's': '~/.config/nvim/general/settings.vim'},
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ '~/Development/Rust/Learning',
            \ '~/Development/Work',
            \ '~/Pictures',
            \ '~/.config/nvim',
            \ ]

let g:startify_enable_special = 0
