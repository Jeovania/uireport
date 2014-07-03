module ApplicationHelper
	def titulo(titulo_da_pagina)
		content_for(:titulo){ " - #{titulo_da_pagina}" }
	end
end
