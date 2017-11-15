require 'rails_helper'

describe GoalsController, type: :controller do
  describe 'GET #index' do
    let!(:goal) {FactoryGirl.create(:goal)}

    it 'should render the index template' do
      get :index
      expect(response).to render_template('index')
    end
    
    it 'returns 200 http status code' do
      expect(response).to be_success
    end
  end
  
  describe 'GET #destroy' do
    it 'should update value with 0' do
      expect(Goal.find(1).goal).to eql(0)
    end
    
    it 'returns 200 http status code' do
      expect(response).to be_success
    end
  end
  
  describe 'GET #new' do
    let!(:goal) {FactoryGirl.create(:goal)}

    it 'should render the new template' do
      get :new
      expect(response).to render_template('new')
    end
    
    it 'should use first record with value 0' do
      expect(Goal.find(1).goal).to eql(0)
    end    
    
    it 'returns 200 http status code' do
      expect(response).to be_success
    end
  end
  
  describe 'PUT #update' do
    describe 'When updating the users goal,' do
      let!(:goal) { FactoryGirl.create(:goal) }
      
      it 'renders the edit template' do
        get :edit, id: Goal.count
        expect(response).to render_template('edit')
      end
      
      it "it uses controller update method with new value as parameter" do
        put :update, id: 1, goal: FactoryGirl.attributes_for(:goal, goal: 150)
        expect(flash[:notice]).to be_present
        goal.reload
        expect(Goal.find(1).goal).to eql(150)
        put :update, id: 1, goal: FactoryGirl.attributes_for(:goal, goal:75)
      end
      
      it 'returns 200 http status code' do
        expect(response).to be_success
      end
    end
  end
end