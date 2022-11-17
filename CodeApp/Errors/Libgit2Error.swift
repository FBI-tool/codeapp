//
//  Libgit2Error.swift
//  Code
//
//  Created by Ben Wu on 17/11/2022.
//

import Foundation

enum GitErrorCode: Int {
    case GIT_OK = 0
    /**< No error */

    case GIT_ERROR = -1
    /**< Generic error */
    case GIT_ENOTFOUND = -3
    /**< Requested object could not be found */
    case GIT_EEXISTS = -4
    /**< Object exists preventing operation */
    case GIT_EAMBIGUOUS = -5
    /**< More than one object matches */
    case GIT_EBUFS = -6
    /**< Output buffer too short to hold data */

    /**
     * GIT_EUSER is a special error that is never generated by libgit2
     * code.  You can return it from a callback (e.g to stop an iteration)
     * to know that it was generated by the callback and not by libgit2.
     */
    case GIT_EUSER = -7

    case GIT_EBAREREPO = -8
    /**< Operation not allowed on bare repository */
    case GIT_EUNBORNBRANCH = -9
    /**< HEAD refers to branch with no commits */
    case GIT_EUNMERGED = -10
    /**< Merge in progress prevented operation */
    case GIT_ENONFASTFORWARD = -11
    /**< Reference was not fast-forwardable */
    case GIT_EINVALIDSPEC = -12
    /**< Name/ref spec was not in a valid format */
    case GIT_ECONFLICT = -13
    /**< Checkout conflicts prevented operation */
    case GIT_ELOCKED = -14
    /**< Lock file prevented operation */
    case GIT_EMODIFIED = -15
    /**< Reference value does not match expected */
    case GIT_EAUTH = -16
    /**< Authentication error */
    case GIT_ECERTIFICATE = -17
    /**< Server certificate is invalid */
    case GIT_EAPPLIED = -18
    /**< Patch/merge has already been applied */
    case GIT_EPEEL = -19
    /**< The requested peel operation is not possible */
    case GIT_EEOF = -20
    /**< Unexpected EOF */
    case GIT_EINVALID = -21
    /**< Invalid operation or input */
    case GIT_EUNCOMMITTED = -22
    /**< Uncommitted changes in index prevented operation */
    case GIT_EDIRECTORY = -23
    /**< The operation is not valid for a directory */
    case GIT_EMERGECONFLICT = -24
    /**< A merge conflict exists and cannot continue */

    case GIT_PASSTHROUGH = -30
    /**< A user-configured callback refused to act */
    case GIT_ITEROVER = -31
    /**< Signals end of iteration with iterator */
    case GIT_RETRY = -32
    /**< Internal only */
    case GIT_EMISMATCH = -33
    /**< Hashsum mismatch in object */
    case GIT_EINDEXDIRTY = -34
    /**< Unsaved changes in the index would be overwritten */
    case GIT_EAPPLYFAIL = -35
    /**< Patch application failed */
    case GIT_EOWNER = -36/**< The object is not owned by the current user */
}