# Rakendusserverite halduse autmatiseerimine
## Git
### paigaldamine
git paigaldamiseks tuleb sooritada järgmised käsud:
'''
apt install git
'''
### seadistamine
git seadistamiseks on vaja konfigureerida kasutaja nimi ja email, samuti ka seostada redaktor:
'''
git config --global user.name "Ees Perenimi"
git config --global user.email email@domeen.com
git config --global core.editor nano
'''
