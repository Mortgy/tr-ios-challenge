var entities = [{
  "id": 1,
  "typeString": "class",
  "methods": [
    {
  "name": "setUpWithError() throws",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tearDownWithError() throws",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testExample() throws",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testLaunchPerformance() throws",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "ChallengeUITests",
  "superClass": 64
},{
  "id": 2,
  "typeString": "struct",
  "name": "ApiEndpoints",
  "extensions": [
    9,
    21,
    34,
    46
  ]
},{
  "id": 3,
  "typeString": "protocol",
  "properties": [
    {
  "name": "var networkRequest: NetworkCancellable?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "NetworkServicesProtocol"
},{
  "id": 4,
  "typeString": "protocol",
  "methods": [
    {
  "name": "fetchMovies(with request: MoviesRequest, success: @escaping (MoviesModel) -> Void, fail: @escaping (String) -> Void) -> NetworkCancellable?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "fetchDetails(with request: MovieDetailsRequest, success: @escaping (MovieDetailsModel) -> Void, fail: @escaping (String) -> Void) -> NetworkCancellable?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "fetchRecommended(with request: RecommendedRequest, success: @escaping (MoviesModel) -> Void, fail: @escaping (String) -> Void) -> NetworkCancellable?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "fetchImage(path: String, success: @escaping (Data) -> Void, fail: @escaping (String) -> Void) -> NetworkCancellable?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "NetworkServices",
  "superClass": 65,
  "extensions": [
    10,
    22,
    31,
    43
  ]
},{
  "id": 5,
  "typeString": "struct",
  "properties": [
    {
  "name": "var apiBaseURL: URL",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "NetworkConfiguration"
},{
  "id": 6,
  "typeString": "class",
  "properties": [
    {
  "name": "let shared",
  "type": "type",
  "accessLevel": "internal"
},
    {
  "name": "var networkConfiguration",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var apiDataTransferService: DataTransferService",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let config",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let apiDataNetwork",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "DIContainer"
},{
  "id": 7,
  "typeString": "struct",
  "properties": [
    {
  "name": "let id: Int",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "RecommendedRequest",
  "superClass": 66
},{
  "id": 8,
  "typeString": "protocol",
  "properties": [
    {
  "name": "var recommendedRequest: RecommendedRequest",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "RecommendedRequestProtocol"
},{
  "id": 11,
  "typeString": "class",
  "properties": [
    {
  "name": "var viewModel: RecommendedViewModel!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var coordinator: MovieDetailsCoordinator!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var itemSize: CGSize",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "setup(viewModel: RecommendedViewModel, coordinator: MovieDetailsCoordinator)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "RecommendedCollectionView",
  "superClass": 67,
  "extensions": [
    12,
    13,
    14
  ]
},{
  "id": 15,
  "typeString": "class",
  "properties": [
    {
  "name": "var networkServices: NetworkServices",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var recommended: Publisher<[MovieCellViewModel]>",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var errorMessage: Publisher<String>",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var recommendedRequest: RecommendedRequest",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var networkRequest: NetworkCancellable?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "fetchData()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(networkServices: NetworkServices, recommendedRequest: RecommendedRequest)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    8
  ],
  "name": "RecommendedViewModel"
},{
  "id": 16,
  "typeString": "class",
  "properties": [
    {
  "name": "var childCoordinators",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var navigationController: UINavigationController",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var networkServices: NetworkServices",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "start()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "childDidFinish(child: Coordinator? )",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(navigationController: UINavigationController)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    41
  ],
  "name": "MoviesListCoordinator",
  "superClass": 68,
  "extensions": [
    17,
    18
  ]
},{
  "id": 19,
  "typeString": "struct",
  "name": "MoviesRequest",
  "superClass": 66
},{
  "id": 20,
  "typeString": "protocol",
  "properties": [
    {
  "name": "var moviesRequest: MoviesRequest",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MoviesRequestProtocol"
},{
  "id": 23,
  "typeString": "class",
  "properties": [
    {
  "name": "var viewModel: MoviesViewModel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var coordinator: MoviesListCoordinator? required",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "viewDidLoad()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(viewModel: MoviesViewModel, coordinator: MoviesListCoordinator)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    55
  ],
  "name": "MoviesTableViewController",
  "superClass": 69,
  "extensions": [
    24,
    25,
    26,
    27
  ]
},{
  "id": 28,
  "typeString": "class",
  "properties": [
    {
  "name": "var networkServices: NetworkServices?",
  "type": "instance",
  "accessLevel": "private"
},
    {
  "name": "var movies: Publisher<[MovieCellViewModel]>",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var errorMessage: Publisher<String>",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var moviesRequest: MoviesRequest",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var networkRequest: NetworkCancellable?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "fetchData()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(networkServices: NetworkServices, moviesRequest: MoviesRequest)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    20
  ],
  "name": "MoviesViewModel"
},{
  "id": 29,
  "typeString": "class",
  "properties": [
    {
  "name": "var parentCoordinator: MoviesListCoordinator?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var childCoordinators",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var navigationController: UINavigationController",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var movieId: Int",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "start()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "open(id: Int)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(navigationController: UINavigationController, movieId: Int)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    41
  ],
  "name": "MovieDetailsCoordinator"
},{
  "id": 30,
  "typeString": "class",
  "protocols": [
    4
  ],
  "name": "Network"
},{
  "id": 32,
  "typeString": "struct",
  "properties": [
    {
  "name": "let id: Int",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MovieDetailsRequest",
  "superClass": 66
},{
  "id": 33,
  "typeString": "protocol",
  "properties": [
    {
  "name": "var movieDetailRequest: MovieDetailsRequest",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MovieDetailsRequestProtocol"
},{
  "id": 35,
  "typeString": "class",
  "properties": [
    {
  "name": "var movieNameLabel: UILabel!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var movieReleaseDateLabel: UILabel!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var movieDescriptionLabel: UILabel!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var moviePlotLabel: UILabel!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var moviePosterImageView: UIImageView!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var collectionView: RecommendedCollectionView!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var recommendationsStackView: UIStackView!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var viewModel: MovieDetailsViewModel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var coordinator: MovieDetailsCoordinator? required",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "viewDidLoad()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(viewModel: MovieDetailsViewModel)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    55
  ],
  "name": "MovieDetailsViewController",
  "superClass": 70,
  "extensions": [
    36,
    37
  ]
},{
  "id": 38,
  "typeString": "class",
  "properties": [
    {
  "name": "let networkServices: NetworkServices",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var image: Publisher<Data>",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var movie: Publisher<MovieDetailsModel>",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var errorMessage: Publisher<String>",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var movieDetailRequest: MovieDetailsRequest",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var networkRequest: NetworkCancellable?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "fetchData()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(networkServices: NetworkServices, movieDetailRequest: MovieDetailsRequest)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    33
  ],
  "name": "MovieDetailsViewModel",
  "extensions": [
    39
  ]
},{
  "id": 40,
  "typeString": "class",
  "properties": [
    {
  "name": "var window: UIWindow?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var coordinator: MoviesListCoordinator?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    72
  ],
  "name": "AppDelegate",
  "superClass": 71
},{
  "id": 41,
  "typeString": "protocol",
  "properties": [
    {
  "name": "var childCoordinators: [Coordinator]",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var navigationController : UINavigationController",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "start()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "Coordinator",
  "superClass": 65
},{
  "id": 42,
  "typeString": "protocol",
  "methods": [
    {
  "name": "coordinatorInstance() -> Coordinator?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "Coordinated"
},{
  "id": 44,
  "typeString": "struct",
  "name": "ImageRequest",
  "superClass": 66
},{
  "id": 45,
  "typeString": "protocol",
  "properties": [
    {
  "name": "var imageRequest: ImageRequest",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "ImageRequestProtocol"
},{
  "id": 47,
  "typeString": "enum",
  "protocols": [
    74
  ],
  "cases": [
    {
  "name": "id case name case description"
},
    {
  "name": "notes"
},
    {
  "name": "rating"
},
    {
  "name": "picture case releaseDate"
}
  ],
  "name": "CodingKeys",
  "superClass": 73
},{
  "id": 48,
  "typeString": "struct",
  "properties": [
    {
  "name": "let id: Int?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let name: String?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let description: String?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let notes: String?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let rating: Float?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let picture: String?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let releaseDate: Int?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MovieDetailsModel",
  "superClass": 75,
  "containedEntities": [
    47
  ]
},{
  "id": 49,
  "typeString": "struct",
  "properties": [
    {
  "name": "let movies: [MovieModel]?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MoviesModel",
  "superClass": 75
},{
  "id": 50,
  "typeString": "struct",
  "properties": [
    {
  "name": "let id: Int?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let name: String?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let thumbnail: String?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let year: Int?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MovieModel",
  "superClass": 75
},{
  "id": 54,
  "typeString": "class",
  "properties": [
    {
  "name": "var subscribers: [Subscriber]",
  "type": "instance",
  "accessLevel": "private"
},
    {
  "name": "var value: T?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "subscribe(_ subscriber: @escaping Subscriber)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(_ value: T?)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "Publisher"
},{
  "id": 55,
  "typeString": "protocol",
  "methods": [
    {
  "name": "showAlert(title: String, message: String, actions: [UIAlertAction]?)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "Alert",
  "extensions": [
    56
  ]
},{
  "id": 57,
  "typeString": "struct",
  "properties": [
    {
  "name": "var networkService: NetworkServices?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var networkRequest: NetworkCancellable?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let movie: MovieModel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var name: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let name",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var year: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let year",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var thumbnail: String",
  "type": "instance",
  "accessLevel": "private"
}
  ],
  "methods": [
    {
  "name": "image(data: @escaping (Data) -> Void)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(movie: MovieModel, networkService: NetworkServices?)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    3
  ],
  "name": "MovieCellViewModel"
},{
  "id": 58,
  "typeString": "class",
  "properties": [
    {
  "name": "var movieViewModel: MovieCellViewModel?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var thumbImageView: UIImageView!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var movieNameLabel: UILabel!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var movieYearLabel: UILabel!",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "awakeFromNib()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setSelected(_ selected: Bool, animated: Bool)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "configure(movieViewModel: MovieCellViewModel)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MovieTableViewCell",
  "superClass": 76
},{
  "id": 59,
  "typeString": "class",
  "properties": [
    {
  "name": "var movieImageView: UIImageView!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var movieViewModel: MovieCellViewModel?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "awakeFromNib()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "configure(movieViewModel: MovieCellViewModel)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MovieCollectionViewCell",
  "superClass": 77
},{
  "id": 60,
  "typeString": "class",
  "properties": [
    {
  "name": "let network",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "test_MoviesViewModel_networkSuccessAndFail()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "test_DetailsViewModel_networkSuccessAndFail()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "test_RecommendedViewModel_networkSuccessAndFail()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "ViewModelsTests",
  "superClass": 64
},{
  "id": 61,
  "typeString": "class",
  "properties": [
    {
  "name": "var shouldFail",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "fetchMovies(with request: MoviesRequest, success: @escaping (MoviesModel) -> Void, fail: @escaping (String) -> Void) -> NetworkCancellable?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "fetchDetails(with request: MovieDetailsRequest, success: @escaping (MovieDetailsModel) -> Void, fail: @escaping (String) -> Void) -> NetworkCancellable?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "fetchRecommended(with request: RecommendedRequest, success: @escaping (MoviesModel) -> Void, fail: @escaping (String) -> Void) -> NetworkCancellable?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "NetworkMock",
  "superClass": 30
},{
  "id": 62,
  "typeString": "class",
  "properties": [
    {
  "name": "var publisher: Publisher<String>",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "test_updating()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "PublisherTests",
  "superClass": 64
},{
  "id": 63,
  "typeString": "class",
  "methods": [
    {
  "name": "setUpWithError() throws",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tearDownWithError() throws",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testExample() throws",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testPerformanceExample() throws",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "ChallengeTests",
  "superClass": 64
},{
  "id": 64,
  "typeString": "class",
  "name": "XCTestCase"
},{
  "id": 65,
  "typeString": "class",
  "name": "AnyObject"
},{
  "id": 66,
  "typeString": "class",
  "name": "Encodable"
},{
  "id": 67,
  "typeString": "class",
  "name": "UICollectionView"
},{
  "id": 68,
  "typeString": "class",
  "name": "NSObject"
},{
  "id": 69,
  "typeString": "class",
  "name": "UITableViewController"
},{
  "id": 70,
  "typeString": "class",
  "name": "UIViewController"
},{
  "id": 71,
  "typeString": "class",
  "name": "UIResponder"
},{
  "id": 72,
  "typeString": "protocol",
  "name": "UIApplicationDelegate"
},{
  "id": 73,
  "typeString": "class",
  "name": "String"
},{
  "id": 74,
  "typeString": "protocol",
  "name": "CodingKey"
},{
  "id": 75,
  "typeString": "class",
  "name": "Codable"
},{
  "id": 76,
  "typeString": "class",
  "name": "UITableViewCell",
  "extensions": [
    53
  ]
},{
  "id": 77,
  "typeString": "class",
  "name": "UICollectionViewCell",
  "extensions": [
    51
  ]
},{
  "id": 78,
  "typeString": "protocol",
  "name": "UICollectionViewDataSource"
},{
  "id": 79,
  "typeString": "protocol",
  "name": "UICollectionViewDelegate"
},{
  "id": 80,
  "typeString": "protocol",
  "name": "UICollectionViewDelegateFlowLayout"
},{
  "id": 81,
  "typeString": "protocol",
  "name": "UINavigationControllerDelegate"
},{
  "id": 82,
  "typeString": "class",
  "name": "Date",
  "extensions": [
    52
  ]
},{
  "id": 9,
  "typeString": "extension",
  "methods": [
    {
  "name": "getRecommended(with recommendedRequestDTO: RecommendedRequest) -> Endpoint<MoviesModel>",
  "type": "type",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "ApiEndpoints"
},{
  "id": 10,
  "typeString": "extension",
  "methods": [
    {
  "name": "fetchRecommended(with request: RecommendedRequest, success: @escaping (MoviesModel) -> Void, fail: @escaping (String) -> Void) -> NetworkCancellable?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "NetworkServices"
},{
  "id": 12,
  "typeString": "extension",
  "methods": [
    {
  "name": "collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    78
  ],
  "extendedEntityName": "RecommendedCollectionView"
},{
  "id": 13,
  "typeString": "extension",
  "methods": [
    {
  "name": "collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    79
  ],
  "extendedEntityName": "RecommendedCollectionView"
},{
  "id": 14,
  "typeString": "extension",
  "methods": [
    {
  "name": "collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    80
  ],
  "extendedEntityName": "RecommendedCollectionView"
},{
  "id": 17,
  "typeString": "extension",
  "methods": [
    {
  "name": "open(movieId: Int)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "MoviesListCoordinator"
},{
  "id": 18,
  "typeString": "extension",
  "methods": [
    {
  "name": "navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    81
  ],
  "extendedEntityName": "MoviesListCoordinator"
},{
  "id": 21,
  "typeString": "extension",
  "methods": [
    {
  "name": "getMovies(with movieRequestDTO: MoviesRequest) -> Endpoint<MoviesModel>",
  "type": "type",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "ApiEndpoints"
},{
  "id": 22,
  "typeString": "extension",
  "methods": [
    {
  "name": "fetchMovies(with request: MoviesRequest, success: @escaping (MoviesModel) -> Void, fail: @escaping (String) -> Void) -> NetworkCancellable?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "NetworkServices"
},{
  "id": 24,
  "typeString": "extension",
  "methods": [
    {
  "name": "setupUI()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "MoviesTableViewController"
},{
  "id": 25,
  "typeString": "extension",
  "methods": [
    {
  "name": "register()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "registerSubscribers()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "registerCell()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "MoviesTableViewController"
},{
  "id": 26,
  "typeString": "extension",
  "methods": [
    {
  "name": "coordinatorInstance() -> Coordinator?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    42
  ],
  "extendedEntityName": "MoviesTableViewController"
},{
  "id": 27,
  "typeString": "extension",
  "methods": [
    {
  "name": "tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "MoviesTableViewController"
},{
  "id": 31,
  "typeString": "extension",
  "methods": [
    {
  "name": "fetchDetails(with request: MovieDetailsRequest, success: @escaping (MovieDetailsModel) -> Void, fail: @escaping (String) -> Void) -> NetworkCancellable?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "NetworkServices"
},{
  "id": 34,
  "typeString": "extension",
  "methods": [
    {
  "name": "getMovieDetails(with movieDetailsRequestDTO: MovieDetailsRequest) -> Endpoint<MovieDetailsModel>",
  "type": "type",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "ApiEndpoints"
},{
  "id": 36,
  "typeString": "extension",
  "methods": [
    {
  "name": "registerSubscribers()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupRecommended()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "registerRecommendedSubscriber()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "MovieDetailsViewController"
},{
  "id": 37,
  "typeString": "extension",
  "methods": [
    {
  "name": "coordinatorInstance() -> Coordinator?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    42
  ],
  "extendedEntityName": "MovieDetailsViewController"
},{
  "id": 39,
  "typeString": "extension",
  "properties": [
    {
  "name": "var name: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var releaseDate: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let unixTime",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let day",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let monthYear",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var description: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var plot: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var picture: String",
  "type": "instance",
  "accessLevel": "private"
}
  ],
  "methods": [
    {
  "name": "fetchImage()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "MovieDetailsViewModel"
},{
  "id": 43,
  "typeString": "extension",
  "methods": [
    {
  "name": "fetchImage(path: String, success: @escaping (Data) -> Void, fail: @escaping (String) -> Void) -> NetworkCancellable?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "NetworkServices"
},{
  "id": 46,
  "typeString": "extension",
  "methods": [
    {
  "name": "getImage(path: String) -> Endpoint<Data>",
  "type": "type",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "ApiEndpoints"
},{
  "id": 51,
  "typeString": "extension",
  "methods": [
    {
  "name": "nib() -> UINib",
  "type": "type",
  "accessLevel": "internal"
},
    {
  "name": "identifier() -> String",
  "type": "type",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "UICollectionViewCell"
},{
  "id": 52,
  "typeString": "extension",
  "methods": [
    {
  "name": "format(with outputFormat: String) -> String",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "Date"
},{
  "id": 53,
  "typeString": "extension",
  "methods": [
    {
  "name": "nib() -> UINib",
  "type": "type",
  "accessLevel": "internal"
},
    {
  "name": "identifier() -> String",
  "type": "type",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "UITableViewCell"
},{
  "id": 56,
  "typeString": "extension",
  "methods": [
    {
  "name": "showAlert(title: String, message: String, actions: [UIAlertAction]? = nil)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "Alert"
}] 