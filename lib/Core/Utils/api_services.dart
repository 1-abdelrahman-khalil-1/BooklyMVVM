import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio;
  ApiServices(this.dio);
  String baseurl = "https://www.googleapis.com/";

  getbooks({required String endpoint}) async {
    Response response = await dio.get("$baseurl$endpoint");
    return response.data;
    //return bookoffline;
  }
}
var bookoffline = {
    "kind": "books#volumes",
    "totalItems": 481,
    "items": [
        {
            "kind": "books#volume",
            "id": "6AkgAAAAIAAJ",
            "etag": "JvaEFD0V2rU",
            "selfLink": "https://www.googleapis.com/books/v1/volumes/6AkgAAAAIAAJ",
            "volumeInfo": {
                "title": "Symposium on Automatic Programming for Digital Computers, 13-14 May 1954",
                "authors": [
                    "United States. Navy Mathematical Computing Advisory Panel"
                ],
                "publishedDate": "1955",
                "industryIdentifiers": [
                    {
                        "type": "OTHER",
                        "identifier": "STANFORD:36105031177269"
                    }
                ],
                "readingModes": {
                    "text": false,
                    "image": true
                },
                "pageCount": 170,
                "printType": "BOOK",
                "categories": [
                    "Computer programming"
                ],
                "maturityRating": "NOT_MATURE",
                "allowAnonLogging": false,
                "contentVersion": "0.6.10.0.full.1",
                "panelizationSummary": {
                    "containsEpubBubbles": false,
                    "containsImageBubbles": false
                },
                "imageLinks": {
                    "smallThumbnail": "http://books.google.com/books/content?id=6AkgAAAAIAAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
                    "thumbnail": "http://books.google.com/books/content?id=6AkgAAAAIAAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
                },
                "language": "en",
                "previewLink": "http://books.google.com.eg/books?id=6AkgAAAAIAAJ&printsec=frontcover&dq=programming&hl=&as_brr=7&cd=1&source=gbs_api",
                "infoLink": "https://play.google.com/store/books/details?id=6AkgAAAAIAAJ&source=gbs_api",
                "canonicalVolumeLink": "https://play.google.com/store/books/details?id=6AkgAAAAIAAJ"
            },
            "saleInfo": {
                "country": "EG",
                "saleability": "FREE",
                "isEbook": true,
                "buyLink": "https://play.google.com/store/books/details?id=6AkgAAAAIAAJ&rdid=book-6AkgAAAAIAAJ&rdot=1&source=gbs_api"
            },
            "accessInfo": {
                "country": "EG",
                "viewability": "ALL_PAGES",
                "embeddable": true,
                "publicDomain": true,
                "textToSpeechPermission": "ALLOWED",
                "epub": {
                    "isAvailable": false,
                    "downloadLink": "http://books.google.com.eg/books/download/Symposium_on_Automatic_Programming_for_D.epub?id=6AkgAAAAIAAJ&hl=&output=epub&source=gbs_api"
                },
                "pdf": {
                    "isAvailable": false
                },
                "webReaderLink": "http://play.google.com/books/reader?id=6AkgAAAAIAAJ&hl=&as_brr=7&source=gbs_api",
                "accessViewStatus": "FULL_PUBLIC_DOMAIN",
                "quoteSharingAllowed": false
            }
        },
        {
            "kind": "books#volume",
            "id": "tLo6AQAAMAAJ",
            "etag": "fnenFSoqMWQ",
            "selfLink": "https://www.googleapis.com/books/v1/volumes/tLo6AQAAMAAJ",
            "volumeInfo": {
                "title": "Symposium on Advanced Programming Methods for Digital Computers",
                "subtitle": "Washington, D.C., June 28, 29, 1956",
                "authors": [
                    "United States. Navy Mathematical Computing Advisory Panel"
                ],
                "publishedDate": "1956",
                "industryIdentifiers": [
                    {
                        "type": "OTHER",
                        "identifier": "STANFORD:36105046430711"
                    }
                ],
                "readingModes": {
                    "text": false,
                    "image": true
                },
                "pageCount": 108,
                "printType": "BOOK",
                "categories": [
                    "Computer programming"
                ],
                "maturityRating": "NOT_MATURE",
                "allowAnonLogging": false,
                "contentVersion": "1.7.7.0.full.1",
                "panelizationSummary": {
                    "containsEpubBubbles": false,
                    "containsImageBubbles": false
                },
                "imageLinks": {
                    "smallThumbnail": "http://books.google.com/books/content?id=tLo6AQAAMAAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
                    "thumbnail": "http://books.google.com/books/content?id=tLo6AQAAMAAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
                },
                "language": "en",
                "previewLink": "http://books.google.com.eg/books?id=tLo6AQAAMAAJ&printsec=frontcover&dq=programming&hl=&as_brr=7&cd=2&source=gbs_api",
                "infoLink": "https://play.google.com/store/books/details?id=tLo6AQAAMAAJ&source=gbs_api",
                "canonicalVolumeLink": "https://play.google.com/store/books/details?id=tLo6AQAAMAAJ"
            },
            "saleInfo": {
                "country": "EG",
                "saleability": "FREE",
                "isEbook": true,
                "buyLink": "https://play.google.com/store/books/details?id=tLo6AQAAMAAJ&rdid=book-tLo6AQAAMAAJ&rdot=1&source=gbs_api"
            },
            "accessInfo": {
                "country": "EG",
                "viewability": "ALL_PAGES",
                "embeddable": true,
                "publicDomain": true,
                "textToSpeechPermission": "ALLOWED",
                "epub": {
                    "isAvailable": false,
                    "downloadLink": "http://books.google.com.eg/books/download/Symposium_on_Advanced_Programming_Method.epub?id=tLo6AQAAMAAJ&hl=&output=epub&source=gbs_api"
                },
                "pdf": {
                    "isAvailable": false
                },
                "webReaderLink": "http://play.google.com/books/reader?id=tLo6AQAAMAAJ&hl=&as_brr=7&source=gbs_api",
                "accessViewStatus": "FULL_PUBLIC_DOMAIN",
                "quoteSharingAllowed": false
            }
        },
        {
            "kind": "books#volume",
            "id": "mihHAAAAIAAJ",
            "etag": "2TFRqP5e+r8",
            "selfLink": "https://www.googleapis.com/books/v1/volumes/mihHAAAAIAAJ",
            "volumeInfo": {
                "title": "Pygmalion",
                "subtitle": "A Creative Programming Environment",
                "authors": [
                    "David Canfield Smith"
                ],
                "publishedDate": "1975",
                "industryIdentifiers": [
                    {
                        "type": "OTHER",
                        "identifier": "STANFORD:36105025659116"
                    }
                ],
                "readingModes": {
                    "text": false,
                    "image": true
                },
                "pageCount": 504,
                "printType": "BOOK",
                "categories": [
                    "Computer graphics"
                ],
                "maturityRating": "NOT_MATURE",
                "allowAnonLogging": false,
                "contentVersion": "0.7.8.0.full.1",
                "panelizationSummary": {
                    "containsEpubBubbles": false,
                    "containsImageBubbles": false
                },
                "imageLinks": {
                    "smallThumbnail": "http://books.google.com/books/content?id=mihHAAAAIAAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
                    "thumbnail": "http://books.google.com/books/content?id=mihHAAAAIAAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
                },
                "language": "en",
                "previewLink": "http://books.google.com.eg/books?id=mihHAAAAIAAJ&printsec=frontcover&dq=programming&hl=&as_brr=7&cd=3&source=gbs_api",
                "infoLink": "https://play.google.com/store/books/details?id=mihHAAAAIAAJ&source=gbs_api",
                "canonicalVolumeLink": "https://play.google.com/store/books/details?id=mihHAAAAIAAJ"
            },
            "saleInfo": {
                "country": "EG",
                "saleability": "FREE",
                "isEbook": true,
                "buyLink": "https://play.google.com/store/books/details?id=mihHAAAAIAAJ&rdid=book-mihHAAAAIAAJ&rdot=1&source=gbs_api"
            },
            "accessInfo": {
                "country": "EG",
                "viewability": "ALL_PAGES",
                "embeddable": true,
                "publicDomain": true,
                "textToSpeechPermission": "ALLOWED",
                "epub": {
                    "isAvailable": false,
                    "downloadLink": "http://books.google.com.eg/books/download/Pygmalion.epub?id=mihHAAAAIAAJ&hl=&output=epub&source=gbs_api"
                },
                "pdf": {
                    "isAvailable": false
                },
                "webReaderLink": "http://play.google.com/books/reader?id=mihHAAAAIAAJ&hl=&as_brr=7&source=gbs_api",
                "accessViewStatus": "FULL_PUBLIC_DOMAIN",
                "quoteSharingAllowed": false
            }
        },
        {
            "kind": "books#volume",
            "id": "YoNCAAAAIAAJ",
            "etag": "XkQodEZanvY",
            "selfLink": "https://www.googleapis.com/books/v1/volumes/YoNCAAAAIAAJ",
            "volumeInfo": {
                "title": "Computers in Information Sciences",
                "subtitle": "Programming Language : A DDC Bibliography : January 1968 - April 1972",
                "authors": [
                    "Defense Documentation Center (U.S.)"
                ],
                "publishedDate": "1973",
                "industryIdentifiers": [
                    {
                        "type": "OTHER",
                        "identifier": "STANFORD:36105032538014"
                    }
                ],
                "readingModes": {
                    "text": false,
                    "image": true
                },
                "pageCount": 294,
                "printType": "BOOK",
                "categories": [
                    "Programming languages (Electronic computers)"
                ],
                "maturityRating": "NOT_MATURE",
                "allowAnonLogging": false,
                "contentVersion": "0.6.7.0.full.1",
                "panelizationSummary": {
                    "containsEpubBubbles": false,
                    "containsImageBubbles": false
                },
                "imageLinks": {
                    "smallThumbnail": "http://books.google.com/books/content?id=YoNCAAAAIAAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
                    "thumbnail": "http://books.google.com/books/content?id=YoNCAAAAIAAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
                },
                "language": "en",
                "previewLink": "http://books.google.com.eg/books?id=YoNCAAAAIAAJ&printsec=frontcover&dq=programming&hl=&as_brr=7&cd=4&source=gbs_api",
                "infoLink": "https://play.google.com/store/books/details?id=YoNCAAAAIAAJ&source=gbs_api",
                "canonicalVolumeLink": "https://play.google.com/store/books/details?id=YoNCAAAAIAAJ"
            },
            "saleInfo": {
                "country": "EG",
                "saleability": "FREE",
                "isEbook": true,
                "buyLink": "https://play.google.com/store/books/details?id=YoNCAAAAIAAJ&rdid=book-YoNCAAAAIAAJ&rdot=1&source=gbs_api"
            },
            "accessInfo": {
                "country": "EG",
                "viewability": "ALL_PAGES",
                "embeddable": true,
                "publicDomain": true,
                "textToSpeechPermission": "ALLOWED",
                "epub": {
                    "isAvailable": false,
                    "downloadLink": "http://books.google.com.eg/books/download/Computers_in_Information_Sciences.epub?id=YoNCAAAAIAAJ&hl=&output=epub&source=gbs_api"
                },
                "pdf": {
                    "isAvailable": false
                },
                "webReaderLink": "http://play.google.com/books/reader?id=YoNCAAAAIAAJ&hl=&as_brr=7&source=gbs_api",
                "accessViewStatus": "FULL_PUBLIC_DOMAIN",
                "quoteSharingAllowed": false
            }
        },
        {
            "kind": "books#volume",
            "id": "pgUu_6JEA8UC",
            "etag": "D6OBYC+Dn1I",
            "selfLink": "https://www.googleapis.com/books/v1/volumes/pgUu_6JEA8UC",
            "volumeInfo": {
                "title": "Computer Programming at DIA",
                "subtitle": "The Beginning of a Rewarding and Challenging Professional Career in ADP.",
                "authors": [
                    "United States. Defense Intelligence Agency"
                ],
                "publishedDate": "1983",
                "industryIdentifiers": [
                    {
                        "type": "OTHER",
                        "identifier": "MINN:30000010505174"
                    }
                ],
                "readingModes": {
                    "text": false,
                    "image": true
                },
                "pageCount": 12,
                "printType": "BOOK",
                "maturityRating": "NOT_MATURE",
                "allowAnonLogging": false,
                "contentVersion": "0.4.8.0.full.1",
                "panelizationSummary": {
                    "containsEpubBubbles": false,
                    "containsImageBubbles": false
                },
                "imageLinks": {
                    "smallThumbnail": "http://books.google.com/books/content?id=pgUu_6JEA8UC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
                    "thumbnail": "http://books.google.com/books/content?id=pgUu_6JEA8UC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
                },
                "language": "en",
                "previewLink": "http://books.google.com.eg/books?id=pgUu_6JEA8UC&printsec=frontcover&dq=programming&hl=&as_brr=7&cd=5&source=gbs_api",
                "infoLink": "https://play.google.com/store/books/details?id=pgUu_6JEA8UC&source=gbs_api",
                "canonicalVolumeLink": "https://play.google.com/store/books/details?id=pgUu_6JEA8UC"
            },
            "saleInfo": {
                "country": "EG",
                "saleability": "FREE",
                "isEbook": true,
                "buyLink": "https://play.google.com/store/books/details?id=pgUu_6JEA8UC&rdid=book-pgUu_6JEA8UC&rdot=1&source=gbs_api"
            },
            "accessInfo": {
                "country": "EG",
                "viewability": "ALL_PAGES",
                "embeddable": true,
                "publicDomain": true,
                "textToSpeechPermission": "ALLOWED",
                "epub": {
                    "isAvailable": false,
                    "downloadLink": "http://books.google.com.eg/books/download/Computer_Programming_at_DIA.epub?id=pgUu_6JEA8UC&hl=&output=epub&source=gbs_api"
                },
                "pdf": {
                    "isAvailable": false
                },
                "webReaderLink": "http://play.google.com/books/reader?id=pgUu_6JEA8UC&hl=&as_brr=7&source=gbs_api",
                "accessViewStatus": "FULL_PUBLIC_DOMAIN",
                "quoteSharingAllowed": false
            }
        },
        {
            "kind": "books#volume",
            "id": "_FNCAAAAIAAJ",
            "etag": "xJAFPjTO+jI",
            "selfLink": "https://www.googleapis.com/books/v1/volumes/_FNCAAAAIAAJ",
            "volumeInfo": {
                "title": "FORTRAN IV Programming for Cartography and Typography",
                "authors": [
                    "A. V. Hershey"
                ],
                "publishedDate": "1969",
                "description": "Documentation is provided for a new system of cartography and typography. Input to the system is on IBM punched cards. Typographic input is in the FORTRAN IV character set. A card of textual data is followed by any number of cards of functional data. Mnemonic control codes are provided for the functional data. Samples of output from the new system have been prepared on a mechanical plotter and on a cathode ray printer.",
                "industryIdentifiers": [
                    {
                        "type": "OTHER",
                        "identifier": "STANFORD:36105018850037"
                    }
                ],
                "readingModes": {
                    "text": false,
                    "image": true
                },
                "pageCount": 116,
                "printType": "BOOK",
                "categories": [
                    "Cartography"
                ],
                "maturityRating": "NOT_MATURE",
                "allowAnonLogging": false,
                "contentVersion": "0.11.13.0.full.1",
                "panelizationSummary": {
                    "containsEpubBubbles": false,
                    "containsImageBubbles": false
                },
                "imageLinks": {
                    "smallThumbnail": "http://books.google.com/books/content?id=_FNCAAAAIAAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
                    "thumbnail": "http://books.google.com/books/content?id=_FNCAAAAIAAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
                },
                "language": "en",
                "previewLink": "http://books.google.com.eg/books?id=_FNCAAAAIAAJ&printsec=frontcover&dq=programming&hl=&as_brr=7&cd=6&source=gbs_api",
                "infoLink": "https://play.google.com/store/books/details?id=_FNCAAAAIAAJ&source=gbs_api",
                "canonicalVolumeLink": "https://play.google.com/store/books/details?id=_FNCAAAAIAAJ"
            },
            "saleInfo": {
                "country": "EG",
                "saleability": "FREE",
                "isEbook": true,
                "buyLink": "https://play.google.com/store/books/details?id=_FNCAAAAIAAJ&rdid=book-_FNCAAAAIAAJ&rdot=1&source=gbs_api"
            },
            "accessInfo": {
                "country": "EG",
                "viewability": "ALL_PAGES",
                "embeddable": true,
                "publicDomain": true,
                "textToSpeechPermission": "ALLOWED",
                "epub": {
                    "isAvailable": false,
                    "downloadLink": "http://books.google.com.eg/books/download/FORTRAN_IV_Programming_for_Cartography_a.epub?id=_FNCAAAAIAAJ&hl=&output=epub&source=gbs_api"
                },
                "pdf": {
                    "isAvailable": false
                },
                "webReaderLink": "http://play.google.com/books/reader?id=_FNCAAAAIAAJ&hl=&as_brr=7&source=gbs_api",
                "accessViewStatus": "FULL_PUBLIC_DOMAIN",
                "quoteSharingAllowed": false
            },
            "searchInfo": {
                "textSnippet": "Documentation is provided for a new system of cartography and typography."
            }
        },
        {
            "kind": "books#volume",
            "id": "cO4RAQAAMAAJ",
            "etag": "Pt2mchtg1tk",
            "selfLink": "https://www.googleapis.com/books/v1/volumes/cO4RAQAAMAAJ",
            "volumeInfo": {
                "title": "MIMIC Programming Manual",
                "authors": [
                    "Frederick J. Sansom"
                ],
                "publishedDate": "1967",
                "description": "The report is intended to serve as a self-teaching and working manual for the MIMIC computer program that provides digital solutions on an IBM 7090(7094) computer for systems of ordinary differential equations. MIMIC is the successor to MIDAS (Modified Integration Digital Analog Simulator). It is considerably more powerful, versatile and efficient while retaining the basic simplicity of its predecessor. The program is intended for a wide range of users, from the engineer with no prior knowledge of digital programming to the sophisticated digital programmer faced with the requirement for obtaining solutions to mathematical problems of this type. The manual contains complete instructions for reducing the given equations to MIMIC language, handling imput and output of data, and detailed explanations - profusely illustrated by examples - of the use of the basic MIMIC functions. Appendices contain a tabulation of all standard MIMIC functions in a compact summary form, five (5) completely solved sample problems, and a description of some aspects of the MIMIC processor.",
                "industryIdentifiers": [
                    {
                        "type": "OTHER",
                        "identifier": "CORNELL:31924004287789"
                    }
                ],
                "readingModes": {
                    "text": false,
                    "image": true
                },
                "pageCount": 184,
                "printType": "BOOK",
                "categories": [
                    "Computer programming"
                ],
                "maturityRating": "NOT_MATURE",
                "allowAnonLogging": false,
                "contentVersion": "1.10.11.0.full.1",
                "panelizationSummary": {
                    "containsEpubBubbles": false,
                    "containsImageBubbles": false
                },
                "imageLinks": {
                    "smallThumbnail": "http://books.google.com/books/content?id=cO4RAQAAMAAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
                    "thumbnail": "http://books.google.com/books/content?id=cO4RAQAAMAAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
                },
                "language": "en",
                "previewLink": "http://books.google.com.eg/books?id=cO4RAQAAMAAJ&printsec=frontcover&dq=programming&hl=&as_brr=7&cd=7&source=gbs_api",
                "infoLink": "https://play.google.com/store/books/details?id=cO4RAQAAMAAJ&source=gbs_api",
                "canonicalVolumeLink": "https://play.google.com/store/books/details?id=cO4RAQAAMAAJ"
            },
            "saleInfo": {
                "country": "EG",
                "saleability": "FREE",
                "isEbook": true,
                "buyLink": "https://play.google.com/store/books/details?id=cO4RAQAAMAAJ&rdid=book-cO4RAQAAMAAJ&rdot=1&source=gbs_api"
            },
            "accessInfo": {
                "country": "EG",
                "viewability": "ALL_PAGES",
                "embeddable": true,
                "publicDomain": true,
                "textToSpeechPermission": "ALLOWED",
                "epub": {
                    "isAvailable": false,
                    "downloadLink": "http://books.google.com.eg/books/download/MIMIC_Programming_Manual.epub?id=cO4RAQAAMAAJ&hl=&output=epub&source=gbs_api"
                },
                "pdf": {
                    "isAvailable": false
                },
                "webReaderLink": "http://play.google.com/books/reader?id=cO4RAQAAMAAJ&hl=&as_brr=7&source=gbs_api",
                "accessViewStatus": "FULL_PUBLIC_DOMAIN",
                "quoteSharingAllowed": false
            },
            "searchInfo": {
                "textSnippet": "The manual contains complete instructions for reducing the given equations to MIMIC language, handling imput and output of data, and detailed explanations - profusely illustrated by examples - of the use of the basic MIMIC functions."
            }
        },
        {
            "kind": "books#volume",
            "id": "99vbPjokC78C",
            "etag": "e6aspM1WkHQ",
            "selfLink": "https://www.googleapis.com/books/v1/volumes/99vbPjokC78C",
            "volumeInfo": {
                "title": "Architectural Programming, State of the Art",
                "authors": [
                    "Benjamin H. Evans"
                ],
                "publishedDate": "1981",
                "industryIdentifiers": [
                    {
                        "type": "OTHER",
                        "identifier": "OSU:32435005266200"
                    }
                ],
                "readingModes": {
                    "text": false,
                    "image": true
                },
                "pageCount": 40,
                "printType": "BOOK",
                "categories": [
                    "Architectural design"
                ],
                "maturityRating": "NOT_MATURE",
                "allowAnonLogging": false,
                "contentVersion": "0.5.6.0.full.1",
                "panelizationSummary": {
                    "containsEpubBubbles": false,
                    "containsImageBubbles": false
                },
                "imageLinks": {
                    "smallThumbnail": "http://books.google.com/books/content?id=99vbPjokC78C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
                    "thumbnail": "http://books.google.com/books/content?id=99vbPjokC78C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
                },
                "language": "en",
                "previewLink": "http://books.google.com.eg/books?id=99vbPjokC78C&printsec=frontcover&dq=programming&hl=&as_brr=7&cd=8&source=gbs_api",
                "infoLink": "https://play.google.com/store/books/details?id=99vbPjokC78C&source=gbs_api",
                "canonicalVolumeLink": "https://play.google.com/store/books/details?id=99vbPjokC78C"
            },
            "saleInfo": {
                "country": "EG",
                "saleability": "FREE",
                "isEbook": true,
                "buyLink": "https://play.google.com/store/books/details?id=99vbPjokC78C&rdid=book-99vbPjokC78C&rdot=1&source=gbs_api"
            },
            "accessInfo": {
                "country": "EG",
                "viewability": "ALL_PAGES",
                "embeddable": true,
                "publicDomain": true,
                "textToSpeechPermission": "ALLOWED",
                "epub": {
                    "isAvailable": false,
                    "downloadLink": "http://books.google.com.eg/books/download/Architectural_Programming_State_of_the_A.epub?id=99vbPjokC78C&hl=&output=epub&source=gbs_api"
                },
                "pdf": {
                    "isAvailable": false
                },
                "webReaderLink": "http://play.google.com/books/reader?id=99vbPjokC78C&hl=&as_brr=7&source=gbs_api",
                "accessViewStatus": "FULL_PUBLIC_DOMAIN",
                "quoteSharingAllowed": false
            }
        },
        {
            "kind": "books#volume",
            "id": "X_nxQdpJnHUC",
            "etag": "AiQq0wNM81c",
            "selfLink": "https://www.googleapis.com/books/v1/volumes/X_nxQdpJnHUC",
            "volumeInfo": {
                "title": "Prediction of Success in Automatic Data Processing Programming Course",
                "authors": [
                    "Aaron Katz"
                ],
                "publishedDate": "1962",
                "industryIdentifiers": [
                    {
                        "type": "OTHER",
                        "identifier": "MINN:31951D034257797"
                    }
                ],
                "readingModes": {
                    "text": false,
                    "image": true
                },
                "pageCount": 28,
                "printType": "BOOK",
                "categories": [
                    "Electronic data processing"
                ],
                "maturityRating": "NOT_MATURE",
                "allowAnonLogging": false,
                "contentVersion": "0.5.6.0.full.1",
                "panelizationSummary": {
                    "containsEpubBubbles": false,
                    "containsImageBubbles": false
                },
                "imageLinks": {
                    "smallThumbnail": "http://books.google.com/books/content?id=X_nxQdpJnHUC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
                    "thumbnail": "http://books.google.com/books/content?id=X_nxQdpJnHUC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
                },
                "language": "en",
                "previewLink": "http://books.google.com.eg/books?id=X_nxQdpJnHUC&printsec=frontcover&dq=programming&hl=&as_brr=7&cd=9&source=gbs_api",
                "infoLink": "https://play.google.com/store/books/details?id=X_nxQdpJnHUC&source=gbs_api",
                "canonicalVolumeLink": "https://play.google.com/store/books/details?id=X_nxQdpJnHUC"
            },
            "saleInfo": {
                "country": "EG",
                "saleability": "FREE",
                "isEbook": true,
                "buyLink": "https://play.google.com/store/books/details?id=X_nxQdpJnHUC&rdid=book-X_nxQdpJnHUC&rdot=1&source=gbs_api"
            },
            "accessInfo": {
                "country": "EG",
                "viewability": "ALL_PAGES",
                "embeddable": true,
                "publicDomain": true,
                "textToSpeechPermission": "ALLOWED",
                "epub": {
                    "isAvailable": false,
                    "downloadLink": "http://books.google.com.eg/books/download/Prediction_of_Success_in_Automatic_Data.epub?id=X_nxQdpJnHUC&hl=&output=epub&source=gbs_api"
                },
                "pdf": {
                    "isAvailable": false
                },
                "webReaderLink": "http://play.google.com/books/reader?id=X_nxQdpJnHUC&hl=&as_brr=7&source=gbs_api",
                "accessViewStatus": "FULL_PUBLIC_DOMAIN",
                "quoteSharingAllowed": false
            }
        },
        {
            "kind": "books#volume",
            "id": "n4ugoIlWh_wC",
            "etag": "yXd7zb2h0qo",
            "selfLink": "https://www.googleapis.com/books/v1/volumes/n4ugoIlWh_wC",
            "volumeInfo": {
                "title": "Capital Programming Guide",
                "authors": [
                    "United States. Office of Management and Budget"
                ],
                "publishedDate": "1997",
                "industryIdentifiers": [
                    {
                        "type": "OTHER",
                        "identifier": "PURD:32754068863582"
                    }
                ],
                "readingModes": {
                    "text": false,
                    "image": true
                },
                "pageCount": 116,
                "printType": "BOOK",
                "categories": [
                    "Capital budget"
                ],
                "maturityRating": "NOT_MATURE",
                "allowAnonLogging": false,
                "contentVersion": "0.8.9.0.full.1",
                "panelizationSummary": {
                    "containsEpubBubbles": false,
                    "containsImageBubbles": false
                },
                "imageLinks": {
                    "smallThumbnail": "http://books.google.com/books/content?id=n4ugoIlWh_wC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
                    "thumbnail": "http://books.google.com/books/content?id=n4ugoIlWh_wC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
                },
                "language": "en",
                "previewLink": "http://books.google.com.eg/books?id=n4ugoIlWh_wC&printsec=frontcover&dq=programming&hl=&as_brr=7&cd=10&source=gbs_api",
                "infoLink": "https://play.google.com/store/books/details?id=n4ugoIlWh_wC&source=gbs_api",
                "canonicalVolumeLink": "https://play.google.com/store/books/details?id=n4ugoIlWh_wC"
            },
            "saleInfo": {
                "country": "EG",
                "saleability": "FREE",
                "isEbook": true,
                "buyLink": "https://play.google.com/store/books/details?id=n4ugoIlWh_wC&rdid=book-n4ugoIlWh_wC&rdot=1&source=gbs_api"
            },
            "accessInfo": {
                "country": "EG",
                "viewability": "ALL_PAGES",
                "embeddable": true,
                "publicDomain": true,
                "textToSpeechPermission": "ALLOWED",
                "epub": {
                    "isAvailable": false,
                    "downloadLink": "http://books.google.com.eg/books/download/Capital_Programming_Guide.epub?id=n4ugoIlWh_wC&hl=&output=epub&source=gbs_api"
                },
                "pdf": {
                    "isAvailable": false
                },
                "webReaderLink": "http://play.google.com/books/reader?id=n4ugoIlWh_wC&hl=&as_brr=7&source=gbs_api",
                "accessViewStatus": "FULL_PUBLIC_DOMAIN",
                "quoteSharingAllowed": false
            }
        }
    ]
}
;
