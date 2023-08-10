import Foundation
import SpriteKit

enum PhysicCategory: UInt32 {
    case player = 1
    case bullet = 2
    case none = 4
}

class RecreateGameScene: SKScene, SKPhysicsContactDelegate {
    var player: SKShapeNode!
    var enemy: SKShapeNode!
    
    var healthBar: SKShapeNode!
    var healthBorder: SKShapeNode!
    let kMaxNumHealth = 10
    var health: Int!
    
    var detectionCircle: SKShapeNode!
    var collisionDetected = false
    
    var isShooting = false
    
    var nextPosition: CGPoint!
    var findDifference: Double! {
        var firstPositionDiff = 0.0
        var secondPositionDiff = 0.0
        firstPositionDiff = healthBar.position.y - player.position.y
        secondPositionDiff = nextPosition.y + player.frame.size.height / 2 + healthBar.frame.size.height - nextPosition.y
        
        return firstPositionDiff - secondPositionDiff
    }
    
    override func didMove(to view: SKView) {
        self.physicsWorld.contactDelegate = self
        
        createPlayer(view: view)
        createPlayerHealthBar(view: view)
        createEnemy(view: view)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            movePlayer(location: location)
        }
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        var body1 = SKPhysicsBody()
        var body2 = SKPhysicsBody()
        
        if contact.bodyA.categoryBitMask < contact.bodyB.categoryBitMask {
            body1 = contact.bodyA
            body2 = contact.bodyB
        } else {
            body1 = contact.bodyB
            body2 = contact.bodyA
        }
        if body1.categoryBitMask == PhysicCategory.player.rawValue && body2.categoryBitMask == PhysicCategory.bullet.rawValue {
            health -= 1
            updateHealthBar()
            if health == 0 {
                player.removeFromParent()
                enemy.removeAction(forKey: "fireBullet")
            }
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
        if !collisionDetected {
            detectCollisions()
        } else if !isShooting {
            fireBullets()
        }
    }
    
    func createPlayer(view: SKView) {
        player = SKShapeNode(ellipseOf: CGSize(width: 32, height: 32))
        player.fillColor = SKColor.white
        player.position = CGPoint(x: view.frame.midX, y: view.frame.minY + player.frame.size.height)
        player.zPosition = 1
        player.physicsBody = SKPhysicsBody(circleOfRadius: player.frame.size.width / 2)
        player.physicsBody!.affectedByGravity = false
        player.physicsBody!.categoryBitMask = PhysicCategory.player.rawValue
        player.physicsBody!.contactTestBitMask = PhysicCategory.bullet.rawValue
        player.physicsBody!.collisionBitMask = PhysicCategory.none.rawValue
        addChild(player)
    }
    func createPlayerHealthBar(view: SKView) {
        health = kMaxNumHealth
        
        healthBar = SKShapeNode(rectOf: CGSize(width: player.frame.size.width, height: player.frame.size.height / 4))
        healthBar.fillColor = SKColor.yellow
        healthBar.lineWidth = 0
        healthBar.position = CGPoint(x: player.frame.midX - player.frame.midX, y: player.frame.minY - player.frame.minY + player.frame.size.height)
        healthBar.zPosition = 1
        player.addChild(healthBar)
        
        healthBorder = SKShapeNode(rectOf: CGSize(width: player.frame.size.width, height: player.frame.size.height / 4))
        healthBorder.fillColor = SKColor.clear
        healthBorder.lineWidth = 3
        healthBorder.strokeColor = SKColor.white
        healthBorder.position = CGPoint(x: player.frame.midX - player.frame.midX, y: player.frame.minY - player.frame.minY + player.frame.size.height)
        healthBorder.zPosition = 2
        healthBorder.alpha = 0.0
        player.addChild(healthBorder)
    }
    func createEnemy(view: SKView) {
        enemy = SKShapeNode(ellipseOf: CGSize(width: 32, height: 32))
        enemy.fillColor = SKColor.red
        enemy.position = CGPoint(x: view.frame.midX, y: view.frame.midY)
        enemy.zPosition = 1
        addChild(enemy)
        
        createDetectionCircle()
    }
    func createDetectionCircle() {
        detectionCircle = SKShapeNode(circleOfRadius: 320)
        detectionCircle.fillColor = SKColor.clear
        detectionCircle.strokeColor = SKColor.clear
        detectionCircle.position = enemy.position
        detectionCircle.zPosition = 1
        addChild(detectionCircle)
    }
    func detectCollisions() {
        if detectionCircle.frame.intersects(player.frame) {
            collisionDetected = true
            print("player detected by circle")
        }
    }
    func updateHealthBar() {
        let lastPosition = healthBar.position.x
        let lastWidth = healthBar.frame.width
        let lostLife = healthBorder.frame.width / CGFloat(kMaxNumHealth)

        healthBar.removeFromParent()

        healthBar = SKShapeNode(rectOf: CGSize(width: lastWidth - lostLife, height: player.frame.size.height / 4))
        healthBar.position.x = lastPosition - lostLife / 2
        healthBar.position.y = healthBorder.position.y
        healthBar.lineWidth = 0
        healthBar.zPosition = 1
        healthBar.fillColor = SKColor.yellow

        player.addChild(healthBar)
    }
    func createBullets() -> SKShapeNode {
        var bullet: SKShapeNode
        bullet = SKShapeNode(ellipseOf: CGSize(width: 8, height: 8))
        bullet.fillColor = SKColor.red
        bullet.position = enemy.position
        bullet.zPosition = 0
        bullet.physicsBody = SKPhysicsBody(circleOfRadius: bullet.frame.size.width / 2)
        bullet.physicsBody!.affectedByGravity = false
        bullet.physicsBody!.categoryBitMask = PhysicCategory.bullet.rawValue
        bullet.physicsBody!.contactTestBitMask = PhysicCategory.player.rawValue
        bullet.physicsBody!.collisionBitMask = PhysicCategory.none.rawValue
        addChild(bullet)
        return bullet
    }
    func fireBullets() {
        var fireBulletAction: SKAction
        fireBulletAction = SKAction.run {
            let bullet = self.createBullets()
            let moveBullet = SKAction.move(to: self.player.position, duration: 1)
            let deleteBullet = SKAction.removeFromParent()
            let bulletSequence = SKAction.sequence([moveBullet, deleteBullet])
            bullet.run(bulletSequence)
        }
        var waitForDuration: SKAction
        waitForDuration = SKAction.wait(forDuration: 1)
        let bulletSequence = SKAction.sequence([fireBulletAction, waitForDuration])
        let repeatBulletSequence = SKAction.repeatForever(bulletSequence)
        enemy.run(repeatBulletSequence, withKey: "fireBullet")
        
        isShooting = true
    }
    func distanceBetween(point p1:CGPoint, andPoint p2:CGPoint) -> CGFloat {
            return sqrt(pow((p2.x - p1.x), 2) + pow((p2.y - p1.y), 2))
    }
    func movePlayer(location: CGPoint) {
        let speed: CGFloat = 100.0
        var duration: CGFloat = 0.0
        
        nextPosition = location
        duration = distanceBetween(point: nextPosition, andPoint: player.position) / speed
        let moveAction = SKAction.move(to: nextPosition, duration: duration)
        let healthMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x - nextPosition.x, y: nextPosition.y - nextPosition.y + player.frame.size.height), duration: duration)
        
        player.run(moveAction)
        healthBar.run(healthMoveAction)
        healthBorder.run(healthMoveAction)
    }
}
