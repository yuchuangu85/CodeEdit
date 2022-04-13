//
//  PreferenceSourceControlView.swift
//  
//
//  Created by Nanshi Li on 2022/04/01.
//

import SwiftUI

public struct PreferenceSourceControlView: View {

    public init() {}

    public var body: some View {
        PreferencesContent {
            TabView {
                SourceControlGeneralView(isChecked: true, branchName: "main").tabItem {
                    Text("General")
                }
                SourceControlGitView().tabItem {
                    Text("Git")
                }
            }
        }
    }
}

struct PreferenceSourceControlView_Previews: PreviewProvider {
    static var previews: some View {
        PreferenceSourceControlView()
    }
}