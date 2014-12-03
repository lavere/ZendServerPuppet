Facter.add(:zendserver_installed) do
	confine :kernel => :linux
	setcode do
		if FileTest.exists?("/usr/local/zend/bin")
			"true"
		else
			"false"
		end
	end
end
