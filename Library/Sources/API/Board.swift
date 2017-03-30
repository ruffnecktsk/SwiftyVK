public extension Api {
    public enum Board: String, Method {
        case getTopics = "board.getTopics"
        case getComments = "board.getComments"
        case addTopic = "board.addTopic"
        case addComment = "board.addComment"
        case deleteTopic = "board.deleteTopic"
        case editTopic = "board.editTopic"
        case editComment = "board.editComment"
        case restoreComment = "board.restoreComment"
        case deleteComment = "board.deleteComment"
        case openTopic = "board.openTopic"
        case closeTopic = "board.closeTopic"
        case fixTopic = "board.fixTopic"
        case unfixTopic = "board.unfixTopic"
    }
}
