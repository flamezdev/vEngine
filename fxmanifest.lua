fx_version 'cerulean'
game 'gta5'

author 'Tom Grobbe & flamez44'

description 'Simple Engine Toggle Script for FiveM - Upgraded'
version '2.0.0'

lua54 'yes'

shared_scripts {
    'client/locale_processing.lua',
    'locales/*.lua'
}

client_scripts {
    'client/cl_vengine.lua'
}

--escrow_ignore {
    --'shared/*.lua',
    --'README.md'
--}
