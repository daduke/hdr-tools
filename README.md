hdr-tools
=========

Set of Perl scripts to automate the creation of HDR images and panoramas as much as possible. Highlights include:

  * fully multithreaded
  * takes JPGs, CR2s or pseudo HDR (1 CR2 file) as inputs
  * detects panorama sets by looking at the capture time
  * aligns and combines the exposure bracketed images
  * creates a Hugin config file and lets you create one template panorama. The geometry information of this panorama is then applied to a configurable set of other tonemapping presets
  * uses Photomatix running in wine
  * creates an extra EXR directory containing all pre-tonemapped HDR files of the panorama plus a Makefile for panoramas with particularly difficult exposure conditions (like this one)
  * in general, shifts as much work to the CPU instead of the user
