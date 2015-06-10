Facter.add(:tempdir) do
  setcode { ENV['TEMP'] }
end
