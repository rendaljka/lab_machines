# Lab Machines

This is a collection of [Packer](https://www.packer.io/) templates, meant to create and customize VMs for my local lab environment.
As I often decide to test something new ad-hoc, and my normal VMs might be "dirty", I needed something that would allow me to spin off the VM I need without manually executing commands.

My goals (for now) are:

- Easy to import ready to use K8S environment
- Option to choose between CRI runtimes (containerd,cri-o)
  Their container environments (kata, firecracker .. etc)
  **Note:** No docker support as the docker shim wouldn't be supported anymore
- Kali-linux image customized to my taste (ohmyzsh, powerlevel10k, radare2 ..etc)

## How to use

1. Clone this repository.
2. Select which image/folder you need.
3. Download the base `.ova`, link located in `{OS}/base_ova/ova_download.md`.

   **Note:** More on this in the next section.

4. Check the variables in `variables.pkr.hcl`. Set them to your preference.
5. Validate template and build the image
   ```sh
   packer init
   packer validate .
   packer build .
   ```

## Limitations

1. I tried to use the [Virtualbox ISO builder](https://www.packer.io/plugins/builders/virtualbox/iso). Howwever, I had issues with setting up the `boot_command` in order to install from the image during build.So instead I build an `.ova` myself. The `.ova` is minimal server configuration.

Currently the project uses [Virtualbox OVA/OVF Builder](https://www.packer.io/plugins/builders/virtualbox/ovf) instead.

2. Hosting the `.ova` in the repository is impossible since it's over the limit size. Also `git lfs` also had limits regarding the bandwith quota. So now base `.ova` files are hosted on GDrive or Dropbox or somewhere elese.

## Disclaimers

**The username and password combinations in the configuration templates are just for Building the image.**

**They should be changed afterwars.**

**DO NOT USE IN PRODUCTION ENVIRONMENTS**
