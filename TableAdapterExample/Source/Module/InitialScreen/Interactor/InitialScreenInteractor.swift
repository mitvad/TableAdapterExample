//
//  InitialScreenInteractor.swift
//  TableAdapterExample
//
//  Created by Vadym on 1510//18.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import Foundation

class InitialScreenInteractor {
    weak var output: InitialScreenInteractorOutput!
}

// MARK: - InitialScreenInteractorInput
extension InitialScreenInteractor: InitialScreenInteractorInput {
    
    func loadInitialData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [weak self] in
            guard let strongSelf = self else { return }
            
            let rand = Int.random(in: 0...1)
            
            if rand > 0 {
                strongSelf.output.didChangeApplicationSate(to: .authorized)
            } else {
                strongSelf.output.didChangeApplicationSate(to: .unauthorized)
            }
        }
    }
}
