# vim: ft=muttrc

# Account settings
# account-hook imaps://imap\.partage\.renater\.fr:993/ '\
#     set imap_user = "thomas.vigouroux@grenoble-inp.org";\
#     set imap_pass = "`lpass show -p GInp`";'

# account-hook smtps://thomas.vigouroux@grenoble-inp.org@smtp.partage.renater.fr:465 '\
#     set smtp_pass = "`lpass show -p GInp`";\
#     set smtp_authenticators = "plain";\
#     set ssl_force_tls = yes;'

# # Folder settings
# folder-hook imaps://imap\.partage\.renater\.fr:993/ '\
#     set folder = "imaps://imap\.partage\.renater\.fr:993/";\
#     set from="thomas.vigouroux@grenoble-inp.org";\
#     set hostname="grenoble-inp.org";\
#     set spoolfile = "=INBOX"";\
#     set trash     = "+Trash";\
#     set postponed = "+Drafts";\
#     set record = "+Sent";\
#     set smtp_url = "smtps://thomas.vigouroux@grenoble-inp.org@smtp.partage.renater.fr:465";'

# # Mailboxes
# mailboxes imaps://imap.partage.renater.fr:993/INBOX
set from="thomas.vigouroux@grenoble-inp.org"
set sendmail="msmtp -a ginp"
