cask 'adoptopenjdk13-openj9-jre' do
  version '13.0.1,9'
  sha256 'b4d6520c082fb3a916deb539f71dc0b339b23b964c1246aca9bb489fc4a372d0'

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url 'https://github.com/AdoptOpenJDK/openjdk13-binaries/releases/download/jdk-13.0.1%2B9.1_openj9-0.17.0/OpenJDK13U-jre_x64_mac_openj9_13.0.1_9_openj9-0.17.0.pkg'
  appcast "https://github.com/AdoptOpenJDK/openjdk#{version.major}-binaries/releases/latest"
  name 'AdoptOpenJDK 13 (OpenJ9 JRE)'
  homepage 'https://adoptopenjdk.net/'

  pkg 'OpenJDK13U-jre_x64_mac_openj9_13.0.1_9_openj9-0.17.0.pkg'

  uninstall pkgutil: "net.adoptopenjdk.#{version.major}-openj9.jre"
end