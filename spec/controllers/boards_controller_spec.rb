require 'rails_helper'

RSpec.describe BoardsController, type: :controller do

  let(:valid_attributes) {
    {title: 'Grocery'}
  }

  let(:invalid_attributes) {
    {title: ""}

  }
  describe "GET #index" do
    it "returns a success response" do
      board = @board.create! valid_attributes
      get :index
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
  it "returns a success response" do
    board = @board.create! valid_attributes
      get :show, params: {id: board.id}
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
  context "with valid params" do
    it "creates a new Board" do
      expect {
        post :create, params: {board: valid_attributes}
      }.to change(Board, :count).by(1)
    end

      it "redirects to the created board" do
        post :create, params: {board: valid_attributes}
        expect(response).to redirect_to(Board.last)
      end
    end

    context "with invalid params" do
      it "does not create a new Board" do
        expect {
          post :create, params: {board: invalid_attributes}
        }.to change(Board, :count).by(0)
      end

      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {board: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        { title: "test_board" }
      }

      it "updates the requested board" do
        board = @board.create! valid_attributes
        put :update, params: {id: board.id, board: new_attributes}
        board.reload
        expect(board.title).to eq(new_attributes[:title])
      end

      it "redirects to the board" do
        board = @board.create! valid_attributes
        put :update, params: {id: board.id, board: valid_attributes}
        expect(response).to redirect_to(board)
      end
    end

    context "with invalid params" do
      it 'does not update the board' do
        board = @board.create! valid_attributes
        put :update, params: {id: board.id, board: invalid_attributes}
        board.reload
        expect(board.title).to_not eq(invalid_attributes[:title])
      end

      it "returns a success response (i.e. to display the 'edit' template)" do
        board = @board.create! valid_attributes
        put :update, params: {id: board.id, board: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested board" do
      board = @board.create! valid_attributes
      expect {
        delete :destroy, params: {id: board.id}
      }.to change(Board, :count).by(-1)
    end

    it "redirects to the board list" do
      board = @board.create! valid_attributes
      delete :destroy, params: {id: board.id}
      expect(response).to redirect_to(board_url)
    end
  end
end