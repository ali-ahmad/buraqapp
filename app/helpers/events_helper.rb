module EventsHelper
	def submit_path(event)
		event.persisted? ?  admin_event_path(event) : admin_events_path 
	end
	def method_type(event)
		event.persisted? ?  'PATCH' : 'POST'  
	end
end