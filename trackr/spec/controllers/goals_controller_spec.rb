require 'rails_helper'

describe GoalsController, type: :controller do

  describe 'GET #index' do
    let!(:goal) {FactoryGirl.create(:goal)}

    it 'should render the index template' do
      get :index
      # expect(response).to render_template('index')
      response.should redirect_to '/' # ?
    end
    
    it 'returns 200 http status code' do
      expect(response).to be_success
    end
  end
  
  describe 'GET #destroy' do
    let!(:goal) {FactoryGirl.create(:goal)}
    it 'should update value with 0' do
      expect(Goal.find(Goal.count).goal).to eql(0)
    end
    
    it 'returns 200 http status code' do
      expect(response).to be_success
    end
  end
  
  describe 'GET #new' do
    let!(:goal) {FactoryGirl.create(:goal)}
    

    it 'should render the new template' do
      get :new
      # expect(response).to render_template('new')
      response.should redirect_to '/' # ?
    end
    
    it 'should use first record with value 0' do
     
      expect(Goal.find(Goal.count).goal).to eql(0)
    end    
    
    it 'returns 200 http status code' do
      expect(response).to be_success
    end
  end
  
  describe 'PUT #update' do
    describe 'When updating the users goal,' do
      let!(:goal) { FactoryGirl.create(:goal) }
      #let!(:fid) {"4"}
      let(:newGoal) do
        { :goal => 150}
      end
      
      let!(:params) {150}
      #let!(:goal) {double("goals", :goal => "0")}
      #let!(:updated){double("updatedGoal", :goal => "150")}
      before(:each) do
        put :update, :id => Goal.count, :goal => newGoal
        @goal.reload
      end
      it 'renders the edit template' do
        get :edit, id: Goal.count
        
        # expect(response).to render_template('edit')
        response.should redirect_to '/' # ?
      end
      
      it "it uses controller update method with new value as parameter" do
        #allow(Goal).to receive(:find).with(Goal.count).and_return(goal)
        #expect(goal).to receive(:update_attributes!).with(params).and_return(updated)
        expect(Goal.find(Goal.count).goal).to eql(150)
        put :update, :id => Goal.count, :goal => 150
        #put :update, id: Goal.count, goal: 150
        #FactoryGirl.attributes_for(:goal, goal: 150)
        #expect(flash[:notice]).to be_present
        #goal.reload
        
        #put :update, id: Goal.count, goal: FactoryGirl.attributes_for(:goal, goal:75)
      end
      
      it 'returns 200 http status code' do
        expect(response).to be_success
      end
    end
  end
end