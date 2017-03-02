# A list of simple extra packages to install
packages:
  - zsh
  - grml-zsh-config
  - vim
  - htop

# The users to manage on the system. The password hashes can be generated with:
# python3 -c "from getpass import getpass; from crypt import *; p=getpass();print('\n'+crypt(p, METHOD_SHA512)) if p==getpass('Please repeat: ') else print('\nFailed repeating.')"
users:
  - name: root
    shell: /usr/bin/zsh
    # password is `arch`
    password: '$6$uygmzqWkzVtkoSTG$yQpQ3.WaB92p.TPZf0LBvQJDblnbPKlM94bcEQ0uAS.5XMMf4EbrG7v9fdY3CRIyDpmiWwrmwHvvIXvoPUu9u/'
  - name: arch
    shell: /usr/bin/zsh
    # password is `arch`
    password: '$6$uygmzqWkzVtkoSTG$yQpQ3.WaB92p.TPZf0LBvQJDblnbPKlM94bcEQ0uAS.5XMMf4EbrG7v9fdY3CRIyDpmiWwrmwHvvIXvoPUu9u/'
    groups:
      - wheel
      - uucp
      - video
      - audio
      - storage
      - games
      - input
    files:
      - name: .config/i3/config
        # source can be hosted on any http, ftp server or inside the state directory (salt://)
        source: https://raw.githubusercontent.com/mdaffin/dotfiles/master/i3.config
        # source_hash is optional, but ensure that the config will not be changed without you approving it by updating the hash
        source_hash: 3322b5826ce2661f498b5e31ec83177764fe314abb60577bb143c2e5aeec9b76a16781b65d7387251803c81a034bf443c848f97a77584516beb488adb21b86d3

