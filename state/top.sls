base:
  '*':
    - base              # Core stuff like the bootloader (currently uefi only), locale, timezone etc.
    - network.ethernet
    - network.wireless  # Note there is a bug there this does not work if you have no wireless cards.
