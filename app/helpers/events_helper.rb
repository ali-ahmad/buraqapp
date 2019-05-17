module EventsHelper
	def submit_path(event)
		event.persisted? ?  event_path(event) : events_path 
	end
	def method_type(event)
		event.persisted? ?  'PATCH' : 'POST'  
	end
end