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
