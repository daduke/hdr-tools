package hdr;

use File::Basename;
require Exporter;

my $PRESETS = "hdr_PRESETS";
my $PHOTOMATIX = "~/.wine/drive_c/program/Photomatix";

@ISA = qw(Exporter);
@EXPORT = qw(alignPix createEXR toneMapCompressor toneMapPreset myPresets);

sub alignPix {
        my ($dir, $pix) = @_;
        system("cd $dir; /usr/bin/align_image_stack -a aligned -C $pix >/dev/null 2>&1");
}

sub createEXR {
        my ($dir, $pix) = @_;
				system("cd $dir; wine $PHOTOMATIX/PhotomatixCL.exe -3 -h exr -ca -d . -o hdr $pix >/dev/null 2>&1");
}

sub toneMapCompressor {
        my ($dir, $name) = @_;
				system("cd $dir; wine $PHOTOMATIX/PhotomatixCL.exe -t2 -d . -o $name -s jpg -j 100 hdr.exr >/dev/null 2>&1");
}

sub toneMapPreset {
        my ($dir, $preset, $name) = @_;
				system("cd $dir; wine $PHOTOMATIX/PhotomatixCL.exe -t1 -x1 $PHOTOMATIX/Presets/$preset.xmp -d . -o $name -s jpg -j 100 hdr.exr >/dev/null 2>&1");
}

sub myPresets {
				open P, dirname($0)."/$PRESETS";
				my $presets = <P>;
				close P;
				chomp $presets;
				return split / /,$presets;
}

1;
