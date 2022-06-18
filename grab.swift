#!/usr/bin/swift

import Foundation


let projectPath = "/Users/kzhiquan/Desktop/swift/Picsee"
let destPath = "/Users/kzhiquan/Desktop/swift/Picsee-translate"

class Grab {

    private var baseFolderUrl: URL?

    func perform() {
        
        self.prepare()
        
        let modules: [(String, String?)] = [("Picsee/Supporting Files", "Main"), ("Album", nil),
                                            ("PPSee", nil), ("PPEdit", nil), ("PPSnip", nil),
                                            ("PPDraw", nil), ("PPExportUserBusiness", nil), ("PPExportBusiness", nil),
                                            ("PPExportAuth", nil), ("PPExport", nil), ("PPBar", nil),
                                            ("PPCommon", nil)]
        for module in modules {
            self.copyModule(source: module.0, target: module.1)
        }
        
    }

    private func prepare() {
        let folderURL = destPath + "/" + "translation"
        let url = URL(fileURLWithPath: folderURL)
        do {
            try FileManager.default.trashItem(at: url, resultingItemURL: nil)
        }catch let error {
            print("error: \(error)")
        }
        self.baseFolderUrl = self.createNotExist(for: url)
    }
    
    private func copyModule(source: String, target: String? = nil) {
        print("")
        let theTarget = target == nil ? source : target!
        print("copy \(source) to \(theTarget)")
        
        guard let baseUrl = self.baseFolderUrl else {
            return
        }
        let targetUrl = baseUrl.appendingPathComponent(theTarget)
        let _ = self.createNotExist(for: targetUrl)
        
        let sourceUrlPath = projectPath + "/" + source
        let sourceUrl = URL(fileURLWithPath: sourceUrlPath)
        
        let errorHandler: (URL, Error) -> Bool = { url, error in
            print("directory enumerator error at: \(url): \(error)")
            return true
        }
        
        guard let enumerator = FileManager.default.enumerator(at: sourceUrl,
                                                              includingPropertiesForKeys: nil,
                                                              options: [.skipsHiddenFiles,
                                                                        .skipsPackageDescendants,
                                                                        .skipsSubdirectoryDescendants],
                                                              errorHandler: errorHandler) else {
                                                                return
        }
        
        while let childUrl = enumerator.nextObject() as? URL {
            
            if childUrl.pathExtension == "lproj" {
                
                print("childUrl: \(childUrl.path)")
                if childUrl.lastPathComponent == "Base.lproj" {
                    continue
                }
                do {
                    let targetChildUrl = targetUrl.appendingPathComponent(childUrl.lastPathComponent)
                    try FileManager.default.copyItem(at: childUrl, to: targetChildUrl)
                }catch let error {
                    print("error: \(error)")
                }
            }
        }
        
    }
    
    private  func createNotExist(for url: URL) -> URL? {
        if !FileManager.default.fileExists(atPath: url.path) {
            do {
                try FileManager.default.createDirectory(at: url, withIntermediateDirectories: true, attributes: nil)
                return url
            }catch let error {
                print("create url failed: \(url), \(error)")
                return nil
            }
        }
        return url
    }


}


print("start grab")

let grab = Grab()
grab.perform()


print("end grab")
