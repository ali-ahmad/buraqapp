module NaatsHelper
	def submit_naat_path(naat)
		naat.persisted? ?  naat_path(naat) : naats_path 
	end
	def method_type(naat)
		naat.persisted? ?  'PUT' : 'POST'  
	end
end