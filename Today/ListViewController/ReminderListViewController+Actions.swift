//
//  ReminderListViewController+Actions.swift
//  Today
//
//  Created by Артём Харченко on 24.03.2023.
//

import UIKit

extension ReminderListViewController {
    @objc func didPressDoneButton(_ sender: ReminderDoneButton) {
        guard let id = sender.id else { return }
        completeReminder(withId: id)
    }
}
