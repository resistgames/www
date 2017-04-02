class ChooseYourAdventureController < ApplicationController
  def index
    @slug = params[:slug]
    @no_container = true
    @page_specific_javascript = [
      'choose_your_adventure'
    ]
    @game_json = ({
      :title => @slug,
      :description => "You are a new recruit of Anonymous. You must prove your worth by hacking to the top of government. You will succeed after making your way through the presidential line of succession and stopping the Trump administration for good.",
      :instructions => "Follow the story and choose what you think is required to hack the target. Becareful, as the wrong descision will result in jail time.",
      :stages => [{
        :name => "Stage 1",
        :subName => "Local Government",
        :levels => [{
          :name => "Mayor Jackson Ward",
          :description => "Mayor Ward is the loudest Trump supporting mayor on the East Coast. Word is he involved in .... It's your job to stop him",
          :nodes => [{
            :id => 'start',
            :type => :start,
            :description => "You are in Mayor wards office and you see a computer, an iPhone, and pictures on the wall.",
            :options => [{
              :ref => "phone",
              :text => "Look at iPhone"
            }, {
              :ref => "pictures",
              :text => "Look closer at pictures"
            }, {
              :ref => "computer",
              :text => "Sit down at computer"
            }]
          }, {
            :id => :phone,
            :type => :link,
            :description => "The phone displaying the time",
            :options => [{
              :ref => :phone_unlock_fail,
              :text => "Unlock with 1212"
            },{
              :ref => :phone_unlock,
              :text => "Unlock with 1983"
            }]
          }, {
            :id => :phone_unlock_fail,
            :type => :link,
            :description => "The phone did not unlock",
            :options => [{
              :ref => :phone,
              :text => "go back"
            }]
          }, {
            :id => :phone_unlock,
            :type => :link,
            :description => "The phone unlocked. 2 Factor Auth Code 453a8c shown",
            :options => [{
              :ref => :start,
              :text => "continue"
            }]
          }]
        }]
      }]
    }).to_json
  end
end
