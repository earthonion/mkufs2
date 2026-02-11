# make ufs image

This is how you can set up the environment to make a ufs image mountable by PS5/PS4 . There may be other methods but this is how ive done it.

# Prerequisites
### for mkufs2.sh:
- FreeBSD

### for mkufs2_linux.sh
- Debian (or any other linux distro)
- Build of https://github.com/kusumi/makefs

# instructions FreeBSD (in bash terminal)

- `git clone https://github.com/earthonion/mkufs2/`
- `chmod +x mkufs2.sh`
- `./mkufs2.sh <input_dir> [output_file]` 


# instructions Linux (Debian/Ubuntu) (in bash terminal)

### clone and build makefs
- `sudo apt install git make gcc pkg-config libbsd-dev zlib1g-dev libssl-dev uuid-dev`
- `git clone https://github.com/kusumi/makefs.git`
- `cd makefs`
- `make`
- `sudo cp ./src/usr.sbin/makefs /usr/local/bin/makefs`

### run the mkufs2_linux script
- `git clone https://github.com/earthonion/mkufs2/`
- `chmod +x mkufs2_linux.sh`
- `./mkufs2.sh <input_dir> [output_file]` 
