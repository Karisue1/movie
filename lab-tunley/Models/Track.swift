//
//  Track.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/2/22.
//
import Nuke
import Foundation

// TODO: Pt 1 - Create a Track model struct
struct Track{
    let trackName: String //movie title/
    let artistName: String
    let artworkUrl100: URL
    let collectionName: String //vote average/
    let primaryGenreName: String //vote count/
    let releaseDate: String
    let popularity: String //popularity/
}

// TODO: Pt 1 - Create an extension with a mock tracks static var
extension Track{
    static var mockTracks: [Track] = [
        
        Track(trackName: "Wonka", //movie title/
              artistName: "Willy Wonka is chock-full of ideas and determined to change the world one delectable bite at a time – is proof that the best things in life begin with a dream, and if you’re lucky enough to meet Willy Wonka, anything is possible.",/* partial description*/
              //POSTER URL
              artworkUrl100: URL(string:  "https://resizing.flixster.com/i7Txn-rTWv7B8aB5AYbe2IuLU6s=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzE0N2E1MDljLTNlZDEtNDIyMS1iZjgzLTJkMjU1NjRjNzEwMy5qcGc=")!,
              collectionName: "7.239",
              primaryGenreName: "1785",
              releaseDate: "2023-12-06",
              popularity: "2244.452"),
            
        Track(trackName: "Aquaman and the Lost Kingdom",
              artistName: "Black Manta, still driven by the need to avenge his father's death and wielding the power of the mythic Black Trident, will stop at nothing to take Aquaman down once and for all. To defeat him, Aquaman must turn to his imprisoned brother Orm, the former King of Atlantis, to forge an unlikely alliance in order to save the world from irreversible destruction.",
              artworkUrl100: URL(string: "https://m.media-amazon.com/images/M/MV5BMzZlZDQ5NWItY2RjMC00NjRiLTlmZTgtZGE2ODEyMjVlOTJhXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_FMjpg_UX1000_.jpg")!,
              collectionName: "6.997",
              primaryGenreName: "1337",
              releaseDate: "2023-12-20",
              popularity: "1831.771"),
        
        Track(trackName: "The Beekeeper",
              artistName: "One man’s campaign for vengeance takes on national stakes after he is revealed to be a former operative of a powerful and clandestine organization known as Beekeepers.",
              artworkUrl100: URL(string: "https://m.media-amazon.com/images/M/MV5BYjZmODc5YmQtNjA2Mi00OTIwLWI5OWMtMzgwNGI2NDczNWZlXkEyXkFqcGdeQXVyMTY3ODkyNDkz._V1_.jpg")!,
              collectionName: "7.329",
              primaryGenreName: "571",
              releaseDate: "2024-01-10",
              popularity: "2486.901"),
        
        Track(trackName: "Migration",
              artistName: "After a migrating duck family alights on their pond with thrilling tales of far-flung places, the Mallard family embarks on a family road trip, from New England, to New York City, to tropical Jamaica.",
              artworkUrl100: URL(string: "https://m.media-amazon.com/images/M/MV5BYjQxMWY5NjgtNDI2NS00MWM2LTg2MDAtNjI5NGIwZTNmYWZiXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg")!,
              collectionName: "7.743",
              primaryGenreName: "472",
              releaseDate: "2023-12-06",
              popularity: "1736.027"),
        
        Track(trackName: "Oppenheimer",
              artistName: "The story of J. Robert Oppenheimer's role in the development of the atomic bomb during World War II.",
              artworkUrl100: URL(string: "https://m.media-amazon.com/images/M/MV5BMDBmYTZjNjUtN2M1MS00MTQ2LTk2ODgtNzc2M2QyZGE5NTVjXkEyXkFqcGdeQXVyNzAwMjU2MTY@._V1_.jpg")!,
              collectionName: "8.117",
              primaryGenreName: "6535",
              releaseDate: "2023-07-19",
              popularity: "467.049"),
        
    ]
}

// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackpopularity(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
