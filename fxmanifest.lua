fx_version 'cerulean'
game 'gta5'
lua54 'yes'

description 'Nx-DirtyMoney - A Dirty Money system'
author 'NexusOCE on Youtube'
version '1.0.0'

shared_scripts {
    '@ox_lib/init.lua'
}

server_scripts {
    'server/*.lua'
}

client_scripts {
    'client/*.lua'
}

client_exports {
    'useFoldedCash',
    'useCashRoll'

}
