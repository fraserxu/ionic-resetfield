angular.module 'ionic.resetfield', []

.directive 'resetField', ($compile, $timeout) ->
    return {
        require: 'ngModel'
        scope: {}
        link: (scope, el, attrs, ctrl) ->
            inputTypes = /text|search|tel|url|email|password/i
            if el[0].nodeName isnt 'INPUT'
                throw new Error "restFieeld is limited to input elements"
            if not inputTypes.test attrs.type
                throw new Error "Invalid input type for resetField"
        
            icon = 'ion-ios7-close'
            if attrs.resetField.length > 0
                icon = attrs.resetField

            template = $compile('<i ng-show="enabled" ng-click="reset()" class="icon ' + icon + ' reset-field-icon"></i>')(scope)
            el.after template

            scope.reset = ->
                ctrl.$setViewValue null
                ctrl.$render()
                $timeout ->
                    el[0].focus()
                , 0, false

            el.bind 'input', ->
                scope.enabled = not ctrl.$isEmpty(el.val())
            .bind 'focus', ->
                scope.enabled = not ctrl.$isEmpty(el.val())
                scope.$apply()
            .bind 'blur', ->
                scope.enabled = false
                scope.$apply()
    }