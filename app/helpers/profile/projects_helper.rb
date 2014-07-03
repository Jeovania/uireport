module Profile::ProjectsHelper
	def status_projeto status
	    case status
	      when 0
	      	'<span class="label label-default">Inativo<span>'
	      when 1
  			'<span class="label label-success">Ativo<span>'
	      else
	        " "
	    end
  end
end
