# vim: ft=muttrc

# Account settings
# account-hook imaps://imap\.gmail\.com:993 '\
#     set imap_user="tomvig38@gmail.com";\
#     set imap_pass="`lpass show -p Mutt`"'

# account-hook smtp://tomvig38@gmail\.com@smtp\.gmail\.com:587 '\
#     set smtp_pass="`lpass show -p Mutt`";\
#     set smtp_authenticators="plain";\
#     set ssl_force_tls=yes'

# # Folder settings
# folder-hook imaps://imap\.gmail\.com:993/ '\
#     set folder = "imaps://imap.gmail.com:993/";\
#     set from = "tomvig38@gmail.com";\
#     set hostname="gmail.com";\
#     set spoolfile="=INBOX";\
#     set trash     = "+[Gmail]/Corbeille";\
#     set postponed = "+[Gmail]/Brouillons";\
#     set smtp_url = "smtp://tomvig38@gmail.com@smtp.gmail.com:587";\
#     set record    = "+[Gmail]/Messages envoyés";'

# # Mailboxes
# mailboxes imaps://imap.gmail.com:993/INBOX
set sendmail="$HOME/.config/mutt/sendmail.sh gmail"
set from="tomvig38@gmail.com"
