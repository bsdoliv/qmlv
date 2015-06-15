#ifndef CASUI_H
#define CASUI_H

enum States {
    None     = -1,
    Login = 1,
    Home,
    TicketNew,
    TicketKeyboard,
    TicketDialogConfirm,
    TicketAddCodeKeyboard,
    TicketAddCreditKeyboard,
    TicketAddCreditDialogConfirm,
    TicketAddCredit,
    TicketCloseCodeKeyboard,
    TicketCloseValidateCode,
    TicketCloseConfirm,
    People,
    Close,
    Consult,
    Accounting,
    File,
    Config,
    Cash
};

#endif //! CASUI_H
