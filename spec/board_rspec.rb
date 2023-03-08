require './lib/board'

describe Board do
  describe '#make_board' do
    subject(:board_make) { described_class.new }
    context 'when make_board is called' do
      it 'returns a 2d array with length of ' do
        expect(board_make.make_board.length).to eq 8
      end
      it 'returns a 2d array with arrays whose length is 8' do
        expect(board_make.make_board[0].length).to eq 8
      end
    end
  end
end
