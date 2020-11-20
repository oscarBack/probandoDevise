class Api::NotesController < ApplicationController

    before_action :doorkeeper_authorize!

    def index
        @notes = Note.all
    end

    def show
        @note = Note.find_by(id: params[:id])
    end
end
