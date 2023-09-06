class PagesController < ApplicationController
    def hello_world
    @hello_world_props = { nameProp: "Everyone" }
    end
    def formpageindex
    @formProps = {formFirstName: "Carlos", formLastName: "Talavera"}
    end
end
    