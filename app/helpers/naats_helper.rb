module NaatsHelper
	def submit_naat_path(naat)
		naat.persisted? ?  admin_naat_path(naat) : admin_naats_path 
	end
	def method_type(naat)
		naat.persisted? ?  'PUT' : 'POST'  
	end
end