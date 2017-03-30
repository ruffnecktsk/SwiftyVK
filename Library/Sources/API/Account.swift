public extension Api {
    public enum Account: String, Method {
        case getCounters = "account.getCounters"
        case setNameInMenu = "account.setNameInMenu"
        case setOnline = "account.setOnline"
        case setOffline = "account.setOffline"
        case lookupContacts = "account.lookupContacts"
        case registerDevice = "account.registerDevice"
        case unregisterDevice = "account.unregisterDevice"
        case setSilenceMode = "account.setSilenceMode"
        case getPushSettings = "account.getPushSettings"
        case setPushSettings = "account.setPushSettings"
        case getAppPermissions = "account.getAppPermissions"
        case getActiveOffers = "account.getActiveOffers"
        case banUser = "account.banUser"
        case unbanUser = "account.unbanUser"
        case getBanned = "account.getBanned"
        case getInfo = "account.getInfo"
        case setInfo = "account.setInfo"
        case changePassword = "account.changePassword"
        case getProfileInfo = "account.getProfileInfo"
        case saveProfileInfo = "account.saveProfileInfo"
    }
}
