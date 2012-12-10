PATH := $(PATH):../

all:
	@echo
	@echo "*** single HDR from 3 JPGs ***"
	@(cd hdr_jpg; hdr_create -c)
	@echo
	@echo
	@echo "*** single HDR from 3 CR2s ***"
	@(cd hdr_cr2; hdr_create -c)
	@echo
	@echo
	@echo "*** single pseudo HDR from 1 CR2 ***"
	@(cd hdr_pseudo; hdr_create -c)
	@echo
	@echo
	@echo "*** HDR panorama with all presets - this will barf errors if you don't have the presets installed ***"
	@(cd all_presets; hdr_create)
	@echo
	@echo
	@echo "*** raw HDR panorama ***"
	@(cd pano_cr2; hdr_create -c)
	@echo
	@echo
	@echo "*** collection of directories (mix of HDR and HDR panorama) ***"
	@(cd bunch_of_dirs; hdr_create -c)
