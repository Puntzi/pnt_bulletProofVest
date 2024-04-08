fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Puntzi'
description 'Simple bulletproof system with metadata'
version '2.0.1'

client_scripts {
    'client/client.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/server.lua'
}

shared_scripts {
    '@ox_lib/init.lua',
    'configuration/*.lua'
}
