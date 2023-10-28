local status_ok, impatient = pcall(require, "impatient")
if not status_ok then
	print "Impatient.lua failed"
	return
end

impatient.enable_profile()
