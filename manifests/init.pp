#
# = Class: cuckoo
#
# This class install Cuckoo.
#
class cuckoo {
  include ::python::mod::pip
  include ::tools::tcpdump

#  package { 'cybox':
#    version  => '2.1.0.9',
#    provider => 'pip',
#  }
#  package { 'maec':
#    version  => '4.1.0.11',
#    provider => 'pip',
#  }

  package { 'qemu-kvm': }
  package { 'libvirt-client': } # libvirt-bin
  package { 'bridge-utils':   }
  package { 'libvirt-python': }
  # ubuntu-vm-builder

  package { 'gcc': }
  package { 'python-devel': }
  package { 'libxml2-devel': }
  package { 'libxslt-devel': }
  # pip install XenApi
  # pip install cybox==2.1.0.9
  # pip install maec==4.1.0.11

}
# vi:syntax=puppet:filetype=puppet:ts=4:et:nowrap:
