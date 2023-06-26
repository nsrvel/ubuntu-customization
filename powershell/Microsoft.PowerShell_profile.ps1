# Import Required Module
Import-Module posh-git
Import-Module oh-my-posh
Import-Module PSReadLine
Import-Module Terminal-Icons

# Config Oh my posh & Plugin
oh-my-posh init pwsh --config ~/.poshthemes/nsrvel.omp.json | Invoke-Expression
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# Set ENV
$env:PATH = "/home/vell/.cache/oh-my-posh:/opt/microsoft/powershell/7:/home/vell/.npm-global/bin:/home/vell/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/snap/bin:/home/vell/go/bin"

# Set Alias
Set-Alias vim nvim
Set-Alias ll Get-ChildItem
Set-Alias g git

# Custom function to see project in office dir 
function mop {
	cd /home/vell/Desktop/nsrvel/office/project
	ll
}

# Custom function to see project in personal dir
function mpp {
	cd /home/vell/Desktop/nsrvel/personal/project
	ll
}

# Custom function to access mutter-rounded-setting
function mymutter {
	gjs /home/vell/Documents/mutter-rounded-setting/dist/mutter_settings.js
}

# Custom function to see note in my notes dir
function mynotes {
	cd /home/vell/Documents/MyNotes
	ll
}

# Custom function to see my docker file
function mydc {
	cd /home/vell/Desktop/nsrvel/personal/Docker
	ll
}

# Custom function to start docker pg
function startpg{
	docker container start pg_container
	docker container start pgadmin4_container
}

# Custom function to stop docker pg
function stoppg{
	docker container stop pg_container
	docker container stop pgadmin4_container
}


# Custom function to swag golang
function swag_init{
	cd cmd/core
	/home/vell/go/bin/swag init -g main.go --output ../../docs/swagger
	cd ../../
}

# Custom function to manage open vpn 3
function openvpn_start{
	openvpn3 session-start --config /home/vell/Desktop/nsrvel/office/putra.ovpn
}
function openvpn_session_list{
	openvpn3 sessions-list
}
function openvpn_end{
	openvpn3 session-manage --disconnect --config /home/vell/Desktop/nsrvel/office/putra.ovpn
}
