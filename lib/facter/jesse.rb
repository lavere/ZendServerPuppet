Facter.add('jesse') do
          setcode do
            Facter::Util::Resolution.exec("/usr/local/zend/bing")
          end
         end