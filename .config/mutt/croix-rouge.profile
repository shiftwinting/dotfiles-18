# vim: ft=muttrc

# Account Settings
# account-hook imaps://webmail\.croix-rouge\.fr:993/ '\
#     set imap_user = "`lpass show -u croix-rouge.fr`";\
#     set imap_pass = "`lpass show -p croix-rouge.fr`";'

# account-hook smtps://intranet\\vigourouxt@webmail\.croix-rouge\.fr:465 '\
#     set smtp_pass = "`lpass show -p croix-rouge.fr`";\
#     set smtp_authenticators = "login";\
#     set ssl_force_tls = yes'

# folder-hook imaps://webmail\.croix-rouge\.fr:993/ '\
#     set from="thomas.vigouroux@croix-rouge.fr";\
#     set hostname="croix-rouge.fr";\
#     set folder = "imaps://webmail.croix-rouge.fr:993/";\
#     set spoolfile = "=INBOX"";\
#     set smtp_url = "smtps://intranet\vigourouxt@webmail.croix-rouge.fr:465";\
#     set trash     = "+Éléments%20supprimés";\
#     set record    = "+Éléments%20envoyés";\
#     set postponed = "+Brouillons"'

# mailboxes imaps://webmail\.croix-rouge\.fr:993/
set sendmail="$HOME/.config/mutt/sendmail.sh croix-rouge"
set from="thomas.vigouroux@croix-rouge.fr"
