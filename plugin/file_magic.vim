if exists('g:file_magic_loaded')
   finish 
endif

let g:file_magic_loaded = 1

if !exists('g:file_magic_spells')
    let g:file_magic_spells = {}
endif

command! -nargs=* -complete=customlist,file_magic#get_items_keys FileMagic call file_magic#create_file(<f-args>)
command! -nargs=* FileMagicAddSpell call file_magic#add_spell(<f-args>)
command! -nargs=1 -complete=customlist,file_magic#get_items_keys FileMagicRemoveSpell call file_magic#remove_spell(<f-args>)
