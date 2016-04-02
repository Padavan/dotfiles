set -e

# Add ppa
sudo add-apt-repository ppa:ravefinity-project/ppa
sudo add-apt-repository ppa:linrunner/tlp
sudo add-apt-repository ppa:kirillshkrogalev/ffmpeg-next
sudo add-apt-repository ppa:obsproject/obs-studio

# Install dev tools.
sudo apt-get -y install vim vim-gtk fonts-inconsolata  
sudo apt-get -y install ipython python-pip spyder python-dev
sudo apt-get -y install ssh git
sudo apt-get -y install r-base-core r-base-dev r-cran-ggplot2

# Desktop tools
sudo apt-get -y install libva-intel-vaapi-driver tlp tlp-rdw ffmpeg
sudo apt-get -y install nautilus-dropbox moc mpv redshift-gtk obs-studio  


# Design
sudo apt-get install ambiance-flat-colors

# Remove shit
sudo apt-get -y remove thunderbird totem rhythmbox

# Latex deploy
sudo apt-get -y install etoolbox texlive-latex-extra texlive-lang-cyrillic texlive-lang-european texlive-lang-greek texlive-fonts-recommended texlive-fonts-extra texlive-xetex 



#### Ubuntu specific settings. ####
# Via fixubuntu.com
sudo apt-get remove -y unity-lens-shopping
sudo sh -c 'echo "127.0.0.1 productsearch.ubuntu.com" >> /etc/hosts'
# Save gnome session on exit.
command -v dconf 1>/dev/null &&
 dconf write /org/gnome/gnome-session/auto-save-session true 1>/dev/null &&
# Don't sent Unity length results to Amazon.
command -v gsettings 1>/dev/null &&
 	gsettings set com.canonical.Unity.Lenses remote-content-search none
# Show date and day in the clock in Gnome.
command -v gsettings 1>/dev/null &&
	gsettings set com.canonical.indicator.datetime show-clock true &&
	gsettings set com.canonical.indicator.datetime show-day true &&
	gsettings set com.canonical.indicator.datetime show-date true

# Dedicated install due license issuese
#sudo apt-get isntall -y steam msttcorefonts
