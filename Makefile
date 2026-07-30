TOP  := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))
BASE := $(abspath $(dir $(TOP)))

PKGS = ~/.config/emacs/lib

dispense:
	@sed .github/ISSUE_TEMPLATE/config__devel.yml -e "s/{{account}}/emacscollective/g"  > ../emacscollective/.github/ISSUE_TEMPLATE/config.yml
	@sed .github/ISSUE_TEMPLATE/config__devel.yml -e "s/{{account}}/magit/g"            >           ../magit/.github/ISSUE_TEMPLATE/config.yml
	@sed .github/ISSUE_TEMPLATE/config__devel.yml -e "s/{{account}}/tarsius/g"          >         ../tarsius/.github/ISSUE_TEMPLATE/config.yml

	@sed .github/ISSUE_TEMPLATE/config__emacscollective_repo.yml -e "s/{{Package}}/Borg/g" -e "s/{{package}}/borg/g"     >        $(PKGS)/borg/.github/ISSUE_TEMPLATE/config.yml
	@sed .github/ISSUE_TEMPLATE/config__emacscollective_repo.yml -e "s/{{Package}}/Epkg/g" -e "s/{{package}}/epkg/g"     >        $(PKGS)/epkg/.github/ISSUE_TEMPLATE/config.yml
	@sed .github/ISSUE_TEMPLATE/config__magit_repo.yml -e "s/{{Package}}/Forge/g"       -e "s/{{package}}/forge/g"       >       $(PKGS)/forge/.github/ISSUE_TEMPLATE/config.yml
	@sed .github/ISSUE_TEMPLATE/config__magit_repo.yml -e "s/{{Package}}/Ghub/g"        -e "s/{{package}}/ghub/g"        >        $(PKGS)/ghub/.github/ISSUE_TEMPLATE/config.yml
	@sed .github/ISSUE_TEMPLATE/config__magit_repo.yml -e "s/{{Package}}/Magit/g"       -e "s/{{package}}/magit/g"       >       $(PKGS)/magit/.github/ISSUE_TEMPLATE/config.yml
	@sed .github/ISSUE_TEMPLATE/config__magit_repo.yml -e "s/{{Package}}/Transient/g"   -e "s/{{package}}/transient/g"   >   $(PKGS)/transient/.github/ISSUE_TEMPLATE/config.yml
	@sed .github/ISSUE_TEMPLATE/config__magit_repo.yml -e "s/{{Package}}/With-Editor/g" -e "s/{{package}}/with-editor/g" > $(PKGS)/with-editor/.github/ISSUE_TEMPLATE/config.yml

	@cp -v .github/ISSUE_TEMPLATE/bug_report__devel.md    ../emacscollective/.github/ISSUE_TEMPLATE/bug_report.md
	@cp -v .github/ISSUE_TEMPLATE/bug_report__magit.md              ../magit/.github/ISSUE_TEMPLATE/bug_report.md
	@cp -v .github/ISSUE_TEMPLATE/bug_report__devel.md            ../tarsius/.github/ISSUE_TEMPLATE/bug_report.md

	@cp -v .github/ISSUE_TEMPLATE/bug_report__devel.md          $(PKGS)/borg/.github/ISSUE_TEMPLATE/bug_report.md
	@cp -v .github/ISSUE_TEMPLATE/bug_report__devel.md          $(PKGS)/epkg/.github/ISSUE_TEMPLATE/bug_report.md
	@cp -v .github/ISSUE_TEMPLATE/bug_report__magit.md         $(PKGS)/forge/.github/ISSUE_TEMPLATE/bug_report.md
	@cp -v .github/ISSUE_TEMPLATE/bug_report__magit.md          $(PKGS)/ghub/.github/ISSUE_TEMPLATE/bug_report.md
	@cp -v .github/ISSUE_TEMPLATE/bug_report__magit_magit.md   $(PKGS)/magit/.github/ISSUE_TEMPLATE/bug_report.md
	@cp -v .github/ISSUE_TEMPLATE/bug_report__magit.md     $(PKGS)/transient/.github/ISSUE_TEMPLATE/bug_report.md
	@cp -v .github/ISSUE_TEMPLATE/bug_report__magit.md   $(PKGS)/with-editor/.github/ISSUE_TEMPLATE/bug_report.md

	@cp -v .github/PULL_REQUEST_TEMPLATE                   ../emacsorphanage/.github/PULL_REQUEST_TEMPLATE
	@cp -v .github/PULL_REQUEST_TEMPLATE                  ../emacscollective/.github/PULL_REQUEST_TEMPLATE
	@cp -v .github/PULL_REQUEST_TEMPLATE                            ../magit/.github/PULL_REQUEST_TEMPLATE
	@cp -v .github/PULL_REQUEST_TEMPLATE                          ../tarsius/.github/PULL_REQUEST_TEMPLATE

	@cp -v .github/PULL_REQUEST_TEMPLATE                        $(PKGS)/borg/.github/PULL_REQUEST_TEMPLATE
	@cp -v .github/PULL_REQUEST_TEMPLATE                        $(PKGS)/epkg/.github/PULL_REQUEST_TEMPLATE
	@cp -v .github/PULL_REQUEST_TEMPLATE                       $(PKGS)/forge/.github/PULL_REQUEST_TEMPLATE
	@cp -v .github/PULL_REQUEST_TEMPLATE                        $(PKGS)/ghub/.github/PULL_REQUEST_TEMPLATE
	@cp -v .github/PULL_REQUEST_TEMPLATE                       $(PKGS)/magit/.github/PULL_REQUEST_TEMPLATE
	@cp -v .github/PULL_REQUEST_TEMPLATE                   $(PKGS)/transient/.github/PULL_REQUEST_TEMPLATE
	@cp -v .github/PULL_REQUEST_TEMPLATE                 $(PKGS)/with-editor/.github/PULL_REQUEST_TEMPLATE

# TODO  Improve destination of FUNDING__other
	@cp -v FUNDING__other.yml                                  ../emacsattic/FUNDING.yml
	@cp -v FUNDING__other.yml                                 ../emacsmirror/FUNDING.yml
	@cp -v FUNDING__other.yml                              ../emacsorphanage/FUNDING.yml
	@cp -v FUNDING__other.yml                             ../emacscollective/FUNDING.yml
	@cp -v FUNDING__magit.yml                                       ../magit/FUNDING.yml
	@cp -v FUNDING__other.yml                                     ../tarsius/FUNDING.yml

	@cp -v profile/README__archives.md                         ../emacsattic/profile/README.md
	@cp -v profile/README__archives.md                        ../emacsmirror/profile/README.md
	@cp -v profile/README__archives.md                     ../emacsorphanage/profile/README.md
# TODO  @cp -v profile/README__collective.md                  ../emacscollective/profile/README.md
# TODO  @cp -v profile/README__magit.md                                 ../magit/profile/README.md
	@cp -v profile/README__tarsius.md                             ../tarsius_profile/README.md

# NOTE	sponsors-profile.md has to be pasted at https://github.com/sponsors/tarsius/dashboard/profile

init:
	@git init       ../emacsattic
	@git init      ../emacsmirror
	@git init   ../emacsorphanage
	@git init  ../emacscollective
	@git init            ../magit
	@git init          ../tarsius

	@mkdir -pv      ../emacsattic/.github/
	@mkdir -pv     ../emacsmirror/.github/
	@mkdir -pv  ../emacsorphanage/.github/
	@mkdir -pv ../emacscollective/.github/ISSUE_TEMPLATE/
	@mkdir -pv           ../magit/.github/ISSUE_TEMPLATE/
	@mkdir -pv         ../tarsius/.github/ISSUE_TEMPLATE/

	@mkdir -pv      ../emacsattic/profile/
	@mkdir -pv     ../emacsmirror/profile/
	@mkdir -pv  ../emacsorphanage/profile/

init-remotes:
	@cd        $(BASE)/emacsattic; git remote add origin https://github.com/emacsattic/.github
	@cd       $(BASE)/emacsmirror; git remote add origin https://github.com/emacsmirror/.github
	@cd    $(BASE)/emacsorphanage; git remote add origin https://github.com/emacsorphanage/.github
	@cd   $(BASE)/emacscollective; git remote add origin https://github.com/emacscollective/.github
	@cd             $(BASE)/magit; git remote add origin https://github.com/magit/.github
	@cd           $(BASE)/tarsius; git remote add origin https://github.com/tarsius/.github
	@cd   $(BASE)/tarsius_profile; git remote add origin https://github.com/tarsius/tarsius


# diff --color=always -u old/emacscollective/.github/ISSUE_TEMPLATE/bug_report.md new/emacscollective/.github/ISSUE_TEMPLATE/bug_report.md
