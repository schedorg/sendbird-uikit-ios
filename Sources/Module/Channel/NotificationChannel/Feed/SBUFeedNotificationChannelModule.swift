//
//  SBUFeedNotificationChannelModule.swift
//  SendbirdUIKit
//
//  Created by Jaesung Lee on 2022/12/06.
//  Copyright © 2022 Sendbird, Inc. All rights reserved.
//

import UIKit

// MARK: SBUFeedNotificationChannelModule

/// The class that represents the notification channel module
public class SBUFeedNotificationChannelModule {
    // MARK: Properties (Public)
    /// The module component that represents navigation bar title and bar buttons.
    /// - Since: 3.6.0
    public static var HeaderComponent: SBUFeedNotificationChannelModule.Header.Type = SBUFeedNotificationChannelModule.Header.self
    
    /// - Since: 3.9.0
    public static var CategoryFilterComponent: SBUFeedNotificationChannelModule.CategoryFilter.Type = SBUFeedNotificationChannelModule.CategoryFilter.self
    
    /// The module component that shows the list of notifications in the channel.
    /// - Since: 3.6.0
    public static var ListComponent: SBUFeedNotificationChannelModule.List.Type = SBUFeedNotificationChannelModule.List.self
    
    /// The module component that contains `titleView`, `leftBarButtons`, and `rightBarButtons`
    @available(*, deprecated, message: "Use `SBUFeedNotificationChannelModule.HeaderComponent` instead.")
    public var headerComponent: SBUFeedNotificationChannelModule.Header? {
        get { _headerComponent ?? Self.HeaderComponent.init() }
        set {
            _headerComponent = newValue
            if let validNewValue = newValue {
                Self.HeaderComponent = type(of: validNewValue)
            }
        }
    }
    
    /// The module component that shows the list of notifications in the channel.
    @available(*, deprecated, message: "Use `SBUFeedNotificationChannelModule.ListComponent` instead.")
    public var listComponent: SBUFeedNotificationChannelModule.List? {
        get { _listComponent ?? Self.ListComponent.init() }
        set {
            _listComponent = newValue
            if let validNewValue = newValue {
                Self.ListComponent = type(of: validNewValue)
            }
        }
    }
    
    // MARK: Properties (Private)
    private var _headerComponent: SBUFeedNotificationChannelModule.Header?
    private var _listComponent: SBUFeedNotificationChannelModule.List?
    
    /// Default initializer
    public required init() {}
    
    // swiftlint:disable missing_docs
    // swiftlint:disable identifier_name
    @available(*, deprecated, message: "Use `SBUModuleSet.FeedNotificationChannelModule`")
    public required init(
        _headerComponent: SBUFeedNotificationChannelModule.Header?
    ) {
        self._headerComponent = _headerComponent
    }
    
    @available(*, deprecated, message: "Use `SBUModuleSet.FeedNotificationChannelModule`")
    public required init(
        _listComponent: SBUFeedNotificationChannelModule.List?
    ) {
        self._listComponent = _listComponent
    }
    
    @available(*, deprecated, message: "Use `SBUModuleSet.FeedNotificationChannelModule`")
    public required init(
        _headerComponent: SBUFeedNotificationChannelModule.Header?,
        _listComponent: SBUFeedNotificationChannelModule.List?
    ) {
        self._headerComponent = _headerComponent
        self._listComponent = _listComponent
    }
    // swiftlint:enable missing_docs
    // swiftlint:enable identifier_name
}
