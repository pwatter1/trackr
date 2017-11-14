require 'rails_helper'

describe GoalsController, type: :controller do
  
  describe 'GET #index' do
    let!(:goal) {FactoryGirl.create(:goal)}

    it 'should render the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end
  
  describe 'GET #new' do
    let!(:goal) {FactoryGirl.create(:goal)}

    it 'should render the new template' do
      get :new
      expect(response).to render_template('new')
    end
  end
  
  describe 'PUT #update' do
    describe 'When updating the users goal,' do
      let!(:testgoal) {FactoryGirl.create(:goal)}
      
      it "it uses controller update method with new value as parameter" do
        put :update, id: 0, goal: FactoryGirl.attributes_for(:goal, goal: 90)
        expect(flash[:notice]).to be_present
      end
      
      it 'returns 200 http status code' do
        expect(response).to be_success
      end
      
      it 'updates goal with value 90' do
        testgoal.reload
        expect(testgoal.goal).to eql(90)
      end 
    end
  end
end

