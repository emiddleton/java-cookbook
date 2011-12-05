package "dev-java/sun-jdk" do
  version "1.6.0.26"
end

execute "ensure java 1.6 is the system vm" do
  command "eselect java-vm set system sun-jdk-1.6"
  not_if { %x(eselect --brief java-vm show system).strip == "sun-jdk-1.6" }
end
